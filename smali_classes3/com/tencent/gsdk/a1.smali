.class final Lcom/tencent/gsdk/a1;
.super Lcom/tencent/gsdk/b;
.source "TDMReporterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/a1$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/gsdk/b;-><init>()V

    return-void
.end method


# virtual methods
.method b(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 20
    :try_start_0
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object p1

    const/16 v0, 0x7d6

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/tdm/TDataMaster;->reportEvent(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    instance-of p2, p1, Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "TDM init failed"

    if-nez p2, :cond_0

    .line 19
    invoke-static {v1}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    return v0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/tencent/tdm/TDataMaster;->initialize(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    check-cast p1, Landroid/app/Activity;

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance p2, Lcom/tencent/gsdk/a1$b;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/tencent/gsdk/a1$b;-><init>(Lcom/tencent/gsdk/a1$a;)V

    .line 16
    const-string v0, "LifeCycleObserver"

    invoke-virtual {p1, p2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x1

    return p1

    .line 18
    :catchall_0
    invoke-static {v1}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TDMReporterImpl{}"

    return-object v0
.end method
