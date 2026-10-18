.class public Lcom/intlgame/api/tool/INTLAuthDataBlockStore;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;
    }
.end annotation


# static fields
.field private static final AUTH_DATA_CHUNK_KEY_PREFIX:Ljava/lang/String; = "INTL_AUTH_DATA_CHUNK_"

.field private static final AUTH_DATA_CHUNK_SIZE:I = 0xff0

.field private static final DEFAULT_READ_TIMEOUT_SECONDS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "INTLAuthDataBlockStore "

.field private static final MAX_AUTH_DATA_CHUNK_COUNT:I = 0x1


# instance fields
.field private deleteKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final hasNotifiedReadResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private readKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private saveDataEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->saveDataEntries:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->deleteKeys:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->readKeys:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->hasNotifiedReadResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    invoke-direct {p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->prepareForRead()V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->saveDataEntries:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->deleteKeys:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->readKeys:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->hasNotifiedReadResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    invoke-direct {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->prepareForSave([B)V

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/util/Map;)[B
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->combineAuthData(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/lang/String;[B)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->notifyReadAuthDataResult(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gms/tasks/Task;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->onReadBlockStoreComplete(Lcom/google/android/gms/tasks/Task;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->onSaveBlockStoreComplete(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gms/tasks/Task;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->onDeleteBlockStoreComplete(Lcom/google/android/gms/tasks/Task;Ljava/util/List;)V

    return-void
.end method

.method private static callBlockStoreDeleteBytes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore callBlockStoreDeleteBytes started keys: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest$Builder;-><init>()V

    .line 423
    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest$Builder;->setKeys(Ljava/util/List;)Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest$Builder;->build()Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;

    move-result-object v0

    .line 426
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/blockstore/Blockstore;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    move-result-object v1

    .line 427
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/HasApiKey;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->checkApiAvailability(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;

    invoke-direct {v3, v1, v0, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;-><init>(Lcom/google/android/gms/auth/blockstore/BlockstoreClient;Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;Ljava/util/List;)V

    .line 428
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$7;

    invoke-direct {v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$7;-><init>()V

    .line 442
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static callBlockStoreReadBytes(Ljava/util/List;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;",
            ")V"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore callBlockStoreReadBytes started keys: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 298
    new-instance v0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;-><init>()V

    .line 299
    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->setKeys(Ljava/util/List;)Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;

    move-result-object p0

    .line 300
    invoke-virtual {p0}, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->build()Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;

    move-result-object p0

    .line 302
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/blockstore/Blockstore;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    move-result-object v0

    .line 303
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/HasApiKey;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->checkApiAvailability(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;

    invoke-direct {v2, v0, p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;-><init>(Lcom/google/android/gms/auth/blockstore/BlockstoreClient;Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V

    .line 304
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$3;

    invoke-direct {v0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$3;-><init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static callBlockStoreSaveBytes(Ljava/lang/String;[B)V
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore callBlockStoreSaveBytes started key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 366
    new-instance v0, Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;-><init>()V

    .line 367
    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;->setBytes([B)Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;->setShouldBackupToCloud(Z)Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/auth/blockstore/StoreBytesData$Builder;->build()Lcom/google/android/gms/auth/blockstore/StoreBytesData;

    move-result-object p1

    .line 372
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/blockstore/Blockstore;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    move-result-object v1

    .line 373
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    new-array v0, v0, [Lcom/google/android/gms/common/api/HasApiKey;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->checkApiAvailability(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;

    invoke-direct {v2, v1, p1, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;-><init>(Lcom/google/android/gms/auth/blockstore/BlockstoreClient;Lcom/google/android/gms/auth/blockstore/StoreBytesData;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$5;

    invoke-direct {p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$5;-><init>()V

    .line 388
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private cancelScheduledTimeoutTimer()V
    .locals 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static chunkKeyForIndex(I)Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTL_AUTH_DATA_CHUNK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private combineAuthData(Ljava/util/Map;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 163
    new-array p1, v0, [B

    return-object p1

    .line 167
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 168
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 171
    :cond_1
    new-array v1, v2, [B

    .line 174
    iget-object v2, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->readKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 175
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    array-length v5, v4

    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private static deleteDataInBlockStore(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore deleteDataInBlockStore keys: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 408
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->callBlockStoreDeleteBytes(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore deleteDataInBlockStore exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getMaxSupportedAuthDataSize()I
    .locals 1

    const/16 v0, 0xff0

    return v0
.end method

.method public static instanceForRead()Lcom/intlgame/api/tool/INTLAuthDataBlockStore;
    .locals 1

    .line 73
    new-instance v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

    invoke-direct {v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;-><init>()V

    return-object v0
.end method

.method public static instanceForSave([B)Lcom/intlgame/api/tool/INTLAuthDataBlockStore;
    .locals 1

    .line 77
    new-instance v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;-><init>([B)V

    return-object v0
.end method

.method private static isBlockStoreAvailable()Z
    .locals 3

    .line 263
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 265
    const-string v0, "INTLAuthDataBlockStore INTLSDK.getActivity() return null"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return v1

    .line 268
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const-string v0, "INTLAuthDataBlockStore isGooglePlayServicesAvailable return false"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private notifyReadAuthDataResult(Ljava/lang/String;[B)V
    .locals 4

    .line 129
    invoke-direct {p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->cancelScheduledTimeoutTimer()V

    .line 131
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->hasNotifiedReadResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string p1, "INTLAuthDataBlockStore notifyReadAuthDataResult already notified"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/intlgame/api/INTLResult;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    if-eqz p2, :cond_2

    .line 141
    :try_start_0
    array-length v2, p2

    if-nez v2, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 142
    :cond_2
    :goto_0
    const-string p2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 148
    :goto_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 149
    const-string v3, "auth_data"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string p2, "base_params"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/intlgame/api/INTLResult;->extra_json_:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    move v3, v1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 154
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore notifyReadAuthDataResult error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    move v1, v3

    .line 157
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "INTLAuthDataBlockStore notifyReadAuthDataResult is success: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p1, 0x8fd

    .line 158
    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method private static onDeleteBlockStoreComplete(Lcom/google/android/gms/tasks/Task;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "INTLAuthDataBlockStore delete AuthDataChunks, keys: "

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "INTLAuthDataBlockStore onDeleteBlockStoreComplete exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static onReadBlockStoreComplete(Lcom/google/android/gms/tasks/Task;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;",
            ">;",
            "Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "INTLAuthDataBlockStore readDataFromBlockStore onComplete success: "

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;

    .line 331
    invoke-virtual {v1}, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;->getBlockstoreDataMap()Ljava/util/Map;

    move-result-object v1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", chunk count: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 334
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 335
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse$BlockstoreData;

    .line 339
    invoke-virtual {v1}, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse$BlockstoreData;->getBytes()[B

    move-result-object v1

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTLAuthDataBlockStore read AuthDataChunk, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 341
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {p1, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;->onReadBlockStoreDataResult(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore onReadBlockStoreComplete exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 347
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p1, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;->onReadBlockStoreDataResult(Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method private static onSaveBlockStoreComplete(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "INTLAuthDataBlockStore save AuthDataChunk, key: "

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "INTLAuthDataBlockStore onSaveBlockStoreComplete exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private prepareForRead()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->readKeys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->chunkKeyForIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareForSave([B)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 209
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->getMaxSupportedAuthDataSize()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INTLAuthDataBlockStore save authData too large, size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 214
    new-array p1, v0, [B

    goto :goto_1

    .line 210
    :cond_1
    :goto_0
    const-string p1, "INTLAuthDataBlockStore save authData empty"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 211
    new-array p1, v0, [B

    :cond_2
    :goto_1
    const/16 v1, 0xff0

    .line 217
    invoke-static {p1, v1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->splitDataIntoChunks([BI)Ljava/util/List;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 221
    invoke-static {v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->chunkKeyForIndex(I)Ljava/lang/String;

    move-result-object v3

    if-lez v2, :cond_3

    .line 223
    iget-object v4, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->saveDataEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->deleteKeys:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore save authData, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", chunkSize: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static readDataFromBlockStore(Ljava/util/List;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;",
            ")V"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore readDataFromBlockStore keys: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 289
    :try_start_0
    invoke-static {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->callBlockStoreReadBytes(Ljava/util/List;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore readDataFromBlockStore exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 292
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p1, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;->onReadBlockStoreDataResult(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private static saveDataToBlockStore(Ljava/lang/String;[B)V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore saveDataToBlockStore key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->callBlockStoreSaveBytes(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "INTLAuthDataBlockStore saveDataToBlockStore exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static splitDataIntoChunks([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 241
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int v4, v3, p1

    add-int v5, v4, p1

    .line 250
    array-length v6, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v4

    .line 253
    new-array v6, v5, [B

    .line 254
    invoke-static {p0, v4, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 242
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private startReadAuthDataTimeoutTimer(Ljava/lang/String;)V
    .locals 5

    .line 104
    :try_start_0
    const-string v0, "AUTO_LOGIN_REINSTALL_TIMEOUT_SECONDS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;I)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$2;

    invoke-direct {v2, p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$2;-><init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/lang/String;)V

    int-to-long v3, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public readAuthDataFromBlockStore(Ljava/lang/String;)V
    .locals 2

    .line 81
    const-string v0, "INTLAuthDataBlockStore start readAuthDataFromBlockStore"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->isBlockStoreAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->notifyReadAuthDataResult(Ljava/lang/String;[B)V

    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->startReadAuthDataTimeoutTimer(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->readKeys:Ljava/util/List;

    new-instance v1, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;

    invoke-direct {v1, p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;-><init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->readDataFromBlockStore(Ljava/util/List;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V

    return-void
.end method

.method public saveAuthDataToBlockStore()V
    .locals 3

    .line 187
    const-string v0, "INTLAuthDataBlockStore start saveAuthDataToBlockStore"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->isBlockStoreAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->saveDataEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v2, v1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->saveDataToBlockStore(Ljava/lang/String;[B)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->deleteKeys:Ljava/util/List;

    invoke-static {v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->deleteDataInBlockStore(Ljava/util/List;)V

    return-void
.end method
