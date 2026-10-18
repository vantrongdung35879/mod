.class public Lcom/tencent/tme/live/q0/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/q0/a$a;
    }
.end annotation


# static fields
.field public static f:Lcom/tencent/tme/live/q0/a;


# instance fields
.field public a:Ljava/util/Timer;

.field public b:Lcom/tencent/tme/live/q0/a$a;

.field public final c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tme/live/w0/d;->h:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/tencent/tme/live/q0/a;->c:I

    return-void
.end method

.method public static a()Lcom/tencent/tme/live/q0/a;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/q0/a;->f:Lcom/tencent/tme/live/q0/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/q0/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/q0/a;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/q0/a;->f:Lcom/tencent/tme/live/q0/a;

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/q0/a;->f:Lcom/tencent/tme/live/q0/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/q0/a;->a:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/tme/live/q0/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/tencent/tme/live/q0/a;->a:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/q0/a;->b:Lcom/tencent/tme/live/q0/a$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/tencent/tme/live/q0/a;->b:Lcom/tencent/tme/live/q0/a$a;

    :cond_1
    return-void
.end method
