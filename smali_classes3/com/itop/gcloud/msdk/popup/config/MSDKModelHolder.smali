.class public Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;
.super Ljava/lang/Object;
.source "MSDKModelHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field private t:Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->t:Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;

    if-nez v1, :cond_0

    .line 13
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 15
    :cond_0
    invoke-interface {v1}, Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-interface {p1}, Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->t:Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
