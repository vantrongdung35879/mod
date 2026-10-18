.class public Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;
.super Ljava/lang/Object;
.source "MSDKCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer; = null

.field public static RUNNING:I = 0x1

.field public static STOP:I = 0x0

.field private static innerTimer:Landroid/os/CountDownTimer; = null

.field private static mCountDownTime:I = 0x3c

.field private static mTimerState:I

.field private static timerListener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;


# instance fields
.field private mTimerRemain:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 7
    sput p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mTimerState:I

    return p0
.end method

.method static synthetic access$102(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mTimerRemain:I

    return p1
.end method

.method static synthetic access$200()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;
    .locals 1

    .line 7
    sget-object v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->timerListener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 7
    sput-object p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->innerTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;
    .locals 2

    .line 36
    sget-object v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->INSTANCE:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->INSTANCE:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    invoke-direct {v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;-><init>()V

    sput-object v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->INSTANCE:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->INSTANCE:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    return-object v0
.end method

.method public static setCountDownTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countDownTime"
        }
    .end annotation

    .line 31
    sput p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mCountDownTime:I

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .line 72
    sget-object v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->innerTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 75
    :cond_0
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->STOP:I

    sput v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mTimerState:I

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->innerTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public getTimerRemain()I
    .locals 2

    .line 84
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mTimerState:I

    sget v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->STOP:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    iget v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mTimerRemain:I

    return v0
.end method

.method public getTimerState()I
    .locals 1

    .line 80
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mTimerState:I

    return v0
.end method

.method public setMSDKCountDownTimerListener(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 27
    sput-object p1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->timerListener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;

    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 47
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->cancelTimer()V

    .line 48
    new-instance v6, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$1;

    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->mCountDownTime:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$1;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;JJ)V

    .line 68
    invoke-virtual {v6}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->innerTimer:Landroid/os/CountDownTimer;

    return-void
.end method
