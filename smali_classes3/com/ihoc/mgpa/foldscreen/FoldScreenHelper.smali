.class public Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;,
        Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$MyExecutor;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

.field public static final STATUS_FLAT:I = 0x0

.field public static final STATUS_FOLD:I = 0x2

.field public static final STATUS_HALF_FOLD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MGPA-FoldScreen"

.field public static final UNKNOWN:I = -0x1

.field private static mListener:Lcom/ihoc/mgpa/foldscreen/OnFoldChangeNotifier;


# instance fields
.field private final layoutStateChangeCallback:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;

.field private mAppContext:Landroid/content/Context;

.field private final mExecutor:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$MyExecutor;

.field private mFoldStatus:I

.field private windowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    invoke-direct {v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->INSTANCE:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mFoldStatus:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mAppContext:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;-><init>(Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->layoutStateChangeCallback:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;

    .line 23
    new-instance v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$MyExecutor;

    invoke-direct {v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$MyExecutor;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mExecutor:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$MyExecutor;

    return-void
.end method

.method public static synthetic access$000(Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mFoldStatus:I

    return p0
.end method

.method public static synthetic access$100(Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->notifyFoldChange(I)V

    return-void
.end method

.method public static getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->INSTANCE:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    return-object v0
.end method

.method private notifyFoldChange(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyFoldChange: new state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", old state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mFoldStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MGPA-FoldScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mFoldStatus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mFoldStatus:I

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mListener:Lcom/ihoc/mgpa/foldscreen/OnFoldChangeNotifier;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/foldscreen/OnFoldChangeNotifier;->onFoldChange(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFoldStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mFoldStatus:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mAppContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public isFoldDevice()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/impl/b;->a()Z

    move-result v0

    return v0
.end method

.method public onActivityConfigurationChange(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/impl/d;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->b()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/ihoc/mgpa/foldscreen/impl/d;->a(Landroid/app/Activity;)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->notifyFoldChange(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/impl/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p1}, Lcom/ihoc/mgpa/foldscreen/impl/a;->a(Landroid/app/Activity;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->notifyFoldChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/impl/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/ihoc/mgpa/foldscreen/impl/d;->a(Landroid/app/Activity;)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->notifyFoldChange(I)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/impl/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lcom/ihoc/mgpa/foldscreen/impl/a;->a(Landroid/app/Activity;)I

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->notifyFoldChange(I)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    sget-object v1, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-virtual {v1, p1}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->windowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 12
    iget-object v1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mExecutor:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$MyExecutor;

    iget-object v2, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->layoutStateChangeCallback:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onActivityStop(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->windowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->layoutStateChangeCallback:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;

    invoke-virtual {p1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerFoldChangeListener(Lcom/ihoc/mgpa/foldscreen/OnFoldChangeNotifier;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->mListener:Lcom/ihoc/mgpa/foldscreen/OnFoldChangeNotifier;

    return-void
.end method
