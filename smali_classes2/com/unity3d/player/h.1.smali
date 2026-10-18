.class Lcom/unity3d/player/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

.field private b:Landroid/os/Looper;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/h;->b:Landroid/os/Looper;

    iput-object p2, p0, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 13

    iget-object v0, p0, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    new-array v8, v2, [I

    new-array v9, v2, [I

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    aput v3, v8, v0

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v2

    aput v2, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/h;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/unity3d/player/g;

    iget-object v4, p0, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v5

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/unity3d/player/g;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/unity3d/player/h;->b:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/unity3d/player/g;

    iget-object v7, p0, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array {v0}, [I

    move-result-object v11

    invoke-static {p1}, Lcom/unity3d/player/i;->-$$Nest$sma(Ljava/lang/Throwable;)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object v12

    const-wide/16 v8, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/unity3d/player/g;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    array-length v2, v1

    new-array v8, v2, [I

    array-length v1, v1

    new-array v9, v1, [I

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    aput v0, v8, v1

    invoke-static {p1}, Lcom/unity3d/player/i;->-$$Nest$sma(Ljava/lang/Throwable;)I

    move-result v2

    aput v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Landroid/os/Looper;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/unity3d/player/g;

    iget-object v4, p0, Lcom/unity3d/player/h;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    iget-object v7, p0, Lcom/unity3d/player/h;->c:[Ljava/lang/String;

    const-wide/16 v5, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/unity3d/player/g;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
