.class Lcom/tencent/gsdk/a1$b;
.super Landroid/app/Fragment;
.source "TDMReporterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/gsdk/a1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/gsdk/a1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/TDataMaster;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/TDataMaster;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/TDataMaster;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/TDataMaster;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/TDataMaster;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
