.class public Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;
.super Lbolts/CancellationTokenSource;
.source "ActivityCancellationTokenSource.java"


# instance fields
.field private activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;


# direct methods
.method public static synthetic $r8$lambda$Nora1kkaNM3VDOGL9vCoP1oKcaQ(Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V
    .locals 0

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lbolts/CancellationTokenSource;-><init>()V

    .line 19
    new-instance v0, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/ActivityUtil;->doOnDestroy(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;)Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    return-void
.end method

.method public static of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;
    .locals 1

    .line 14
    new-instance v0, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public tryRelease()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->tryRelease()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    :cond_0
    return-void
.end method
