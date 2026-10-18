.class public Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MGPA-FoldScreen"

.field private static volatile mInstance:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a()V

    return-void
.end method

.method public static getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->mInstance:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->mInstance:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    invoke-direct {v1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->mInstance:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->mInstance:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    return-object v0
.end method


# virtual methods
.method public getFoldStatus()I
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getFoldStatus()I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public isFoldDevice()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->isFoldDevice()Z

    move-result v0

    return v0
.end method

.method public onActivityConfigurationChange(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->onActivityConfigurationChange(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->onActivityStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStop(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->onActivityStop(Landroid/app/Activity;)V

    return-void
.end method

.method public registerFoldChangeListener(Landroid/content/Context;Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->init(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->registerFoldChangeListener(Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;)V

    return-void
.end method

.method public registerFoldChangeListener(Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager$1;

    invoke-direct {v0, p0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager$1;-><init>(Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;)V

    .line 20
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->registerFoldChangeListener(Lcom/ihoc/mgpa/foldscreen/OnFoldChangeNotifier;)V

    return-void
.end method
