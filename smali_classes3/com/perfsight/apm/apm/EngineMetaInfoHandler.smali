.class public Lcom/perfsight/apm/apm/EngineMetaInfoHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;,
        Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;
    }
.end annotation


# static fields
.field private static a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;


# instance fields
.field private b:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

.field private c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v11, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    sget-object v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "NA"

    const/4 v3, 0x0

    const-string v4, "NA"

    const-string v5, "NA"

    const-string v6, "NA"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;-><init>(Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    sput-object v11, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    return-void
.end method

.method private constructor <init>(Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    invoke-direct {v0, p4, p5, p6}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    iput-object p1, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->b:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

    iput-object p2, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->d:Ljava/lang/String;

    iput p3, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->e:I

    iput p7, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->f:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p8, p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->g:Z

    iput p9, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->h:I

    if-ne p10, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->i:Z

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
    .locals 6

    const-class v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    monitor-enter v0

    :try_start_0
    const-string v1, "NA"

    const-string v2, "NA"

    const-string v3, "NA"

    if-nez p0, :cond_0

    new-instance p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v4, "apm_cfg"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "gpuvendor"

    const-string v2, "NA"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gpurender"

    const-string v3, "NA"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gpuversion"

    const-string v4, "NA"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
    .locals 6

    const-class v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iget-object v1, v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->b:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

    sget-object v2, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :try_start_1
    const-string p0, "Unity Engine"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string p0, "Unity engine return gpu info"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iget-object v1, v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->isValid()Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    const-string/jumbo p0, "ue engine, check gpu valid true"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iget-object p0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_7
    invoke-static {p0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Landroid/content/Context;)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    :try_start_8
    invoke-virtual {v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->isValid()Z

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_3

    :try_start_9
    const-string/jumbo p0, "ue engine, gpu cached valid, return"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iput-object v1, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_3
    :try_start_b
    const-string p1, "Gfx info read by apis"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iget-boolean p1, p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->i:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz p1, :cond_a

    :try_start_d
    const-string p1, "UE OpenGLES"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    const/16 p1, 0x1f01

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f00

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/opengl/GLES30;->glGetString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v1, :cond_5

    :try_start_f
    const-string v1, "NA"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    :try_start_10
    invoke-static {v2}, Landroid/opengl/GLES30;->glGetString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v3, :cond_7

    :try_start_11
    const-string v3, "NA"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    :try_start_12
    invoke-static {v4}, Landroid/opengl/GLES30;->glGetString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-nez v5, :cond_9

    :try_start_13
    const-string v5, "NA"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_9
    :goto_2
    :try_start_14
    sget-object p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iget-object p1, p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    invoke-virtual {p1, v5, v1, v3}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->setGpuDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    const-string/jumbo p1, "ue engine glse, write gpu info "

    goto :goto_3

    :cond_a
    const-string p1, "UE Vulkan"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getGpuInfoByVulkan()Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    move-result-object v1

    iput-object v1, p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    const-string/jumbo p1, "ue engine vulkan, write gpu info "
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :goto_3
    :try_start_18
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iget-object p1, p1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    invoke-static {p0, p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Landroid/content/Context;Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    sget-object p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iget-object p0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_5
    :try_start_1a
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;)V
    .locals 3

    const-class v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "apm_cfg"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gpuvendor"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gpurender"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gpuversion"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "WriteGfxInfoInCache"

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "WriteGpuInfoInCache error"

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static a(Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 3

    sget-object v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    new-instance v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    invoke-direct {v1, p3, p4, p5}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    sget-object v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    iput-object p0, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->b:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

    iput-object p1, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->d:Ljava/lang/String;

    iput p2, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->e:I

    iput p6, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->f:I

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->g:Z

    iput p8, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->h:I

    if-ne p9, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->i:Z

    iput p10, v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, p1

    aput-object p4, v2, v1

    const/4 p1, 0x2

    aput-object p5, v2, p1

    const/4 p1, 0x3

    aput-object p0, v2, p1

    const/4 p0, 0x4

    aput-object p2, v2, p0

    const/4 p0, 0x5

    aput-object p6, v2, p0

    const/4 p0, 0x6

    aput-object p7, v2, p0

    const/4 p0, 0x7

    aput-object p8, v2, p0

    const/16 p0, 0x8

    aput-object p9, v2, p0

    const/16 p0, 0x9

    aput-object p10, v2, p0

    const-string p0, "GPU: %s %s %s\n EngineType: %d\n GraphicsApi: %d\nGraphicMemInfo: %d\n GraphicMT: %d\n SupportRenderTargetCount: %d\n OpenGLES: %d\n debugBuild: %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lcom/perfsight/apm/apm/EngineMetaInfoHandler;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->j:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->h:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->i:Z

    return v0
.end method
