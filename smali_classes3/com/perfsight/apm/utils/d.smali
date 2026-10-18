.class public Lcom/perfsight/apm/utils/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/utils/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/perfsight/apm/utils/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfsight/apm/utils/g<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Lcom/perfsight/apm/utils/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/perfsight/apm/utils/g<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field public L:I

.field private M:Ljava/lang/String;

.field private N:I

.field private O:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:J

.field public l:J

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:J

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/perfsight/apm/utils/g;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/perfsight/apm/utils/d;->a:Lcom/perfsight/apm/utils/g;

    const-string v18, "/system/bin/conbb"

    const-string v19, "/system/xbin/conbb"

    const-string v2, "/su"

    const-string v3, "/su/bin/su"

    const-string v4, "/sbin/su"

    const-string v5, "/data/local/xbin/su"

    const-string v6, "/data/local/bin/su"

    const-string v7, "/data/local/su"

    const-string v8, "/system/xbin/su"

    const-string v9, "/system/bin/su"

    const-string v10, "/system/sd/xbin/su"

    const-string v11, "/system/bin/failsafe/su"

    const-string v12, "/system/bin/cufsdosck"

    const-string v13, "/system/xbin/cufsdosck"

    const-string v14, "/system/bin/cufsmgr"

    const-string v15, "/system/xbin/cufsmgr"

    const-string v16, "/system/bin/cufaevdd"

    const-string v17, "/system/xbin/cufaevdd"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfsight/apm/utils/d;->b:[Ljava/lang/String;

    const-string v7, "/sys/class/misc/vhost"

    const-string v8, "/sys/class/misc/qemu"

    const-string v1, "/system/lib/vbox"

    const-string v2, "/system/lib/ko"

    const-string v3, "/system/bin/qemud"

    const-string v4, "/system/bin/qemu-props"

    const-string v5, "/sys/bus/virtio"

    const-string v6, "/sys/class/misc/vbox"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfsight/apm/utils/d;->c:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/perfsight/apm/utils/g;

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string v2, "qemu-pipe"

    const-string v3, "/proc/iomem"

    invoke-direct {v1, v3, v2}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string v2, "goldfish"

    invoke-direct {v1, v3, v2}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string/jumbo v4, "vbox"

    invoke-direct {v1, v3, v4}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string/jumbo v3, "virtio"

    const-string v5, "/proc/ioports"

    invoke-direct {v1, v5, v3}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/perfsight/apm/utils/g;

    invoke-direct {v1, v5, v2}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string v3, "/proc/misc"

    invoke-direct {v1, v3, v4}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string v5, "qemu"

    invoke-direct {v1, v3, v5}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string v3, "/proc/kallsyms"

    invoke-direct {v1, v3, v2}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/perfsight/apm/utils/g;

    invoke-direct {v1, v3, v5}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/perfsight/apm/utils/g;

    const-string v2, "kvm"

    invoke-direct {v1, v3, v2}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/perfsight/apm/utils/g;

    invoke-direct {v1, v3, v4}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/perfsight/apm/utils/d;->d:[Lcom/perfsight/apm/utils/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "get display info error"

    const-string v0, "SOC: "

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v4, ""

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->e:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->f:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->g:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->h:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->i:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/perfsight/apm/utils/d;->j:J

    iput-wide v5, v1, Lcom/perfsight/apm/utils/d;->k:J

    iput-wide v5, v1, Lcom/perfsight/apm/utils/d;->l:J

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->m:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->n:Ljava/lang/String;

    iput-wide v5, v1, Lcom/perfsight/apm/utils/d;->o:J

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->p:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->q:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->r:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->s:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->t:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->u:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->v:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->x:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->y:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->A:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->B:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->C:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->D:Ljava/lang/String;

    const/4 v5, 0x0

    iput v5, v1, Lcom/perfsight/apm/utils/d;->E:I

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->J:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->K:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->M:Ljava/lang/String;

    iput v5, v1, Lcom/perfsight/apm/utils/d;->N:I

    iput v5, v1, Lcom/perfsight/apm/utils/d;->O:I

    iput-object v2, v1, Lcom/perfsight/apm/utils/d;->z:Landroid/content/Context;

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/perfsight/apm/utils/d;->h()V

    invoke-static/range {p1 .. p1}, Lcom/perfsight/apm/utils/d;->b(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/perfsight/apm/utils/d;->v:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcom/perfsight/apm/utils/d;->w:I

    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/perfsight/apm/utils/d;->x:Ljava/lang/String;

    iget-object v5, v1, Lcom/perfsight/apm/utils/d;->z:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/perfsight/apm/utils/d;->s:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/perfsight/apm/utils/d;->t:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perfsight/apm/utils/d;->u:Ljava/lang/String;

    invoke-static {}, Lcom/perfsight/apm/utils/d;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perfsight/apm/utils/d;->M:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/utils/d;->M:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/d;->d()I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, v1, Lcom/perfsight/apm/utils/d;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/perfsight/apm/utils/d;->y:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "get external path error"

    :try_start_2
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/perfsight/apm/utils/d;->y:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/perfsight/apm/utils/d;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, v1, Lcom/perfsight/apm/utils/d;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/perfsight/apm/utils/d;->g:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/perfsight/apm/utils/d;->i:Ljava/lang/String;

    invoke-static {}, Lcom/perfsight/apm/utils/d;->b()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Lcom/perfsight/apm/utils/d;->j:J

    long-to-int v0, v4

    invoke-static {v0}, Lcom/perfsight/apm/utils/d;->a(I)Lcom/perfsight/apm/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    int-to-long v5, v0

    iput-wide v5, v1, Lcom/perfsight/apm/utils/d;->k:J

    iget-wide v5, v1, Lcom/perfsight/apm/utils/d;->j:J

    long-to-int v0, v5

    invoke-static {v0}, Lcom/perfsight/apm/utils/d;->a(I)Lcom/perfsight/apm/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    int-to-long v4, v0

    iput-wide v4, v1, Lcom/perfsight/apm/utils/d;->l:J

    invoke-static {}, Lcom/perfsight/apm/utils/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/perfsight/apm/utils/d;->m:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v1, Lcom/perfsight/apm/utils/d;->n:Ljava/lang/String;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string/jumbo v0, "window"

    :try_start_3
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v1, Lcom/perfsight/apm/utils/d;->N:I

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v1, Lcom/perfsight/apm/utils/d;->O:I

    invoke-static {}, Lcom/perfsight/apm/utils/d;->a()Lcom/perfsight/apm/utils/g;

    move-result-object v0

    iget-object v5, v1, Lcom/perfsight/apm/utils/d;->q:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfsight/apm/utils/d;->p:Ljava/lang/String;

    iget-object v7, v1, Lcom/perfsight/apm/utils/d;->f:Ljava/lang/String;

    iget-object v8, v1, Lcom/perfsight/apm/utils/d;->g:Ljava/lang/String;

    iget-object v9, v1, Lcom/perfsight/apm/utils/d;->J:Ljava/lang/String;

    iget-object v10, v1, Lcom/perfsight/apm/utils/d;->s:Ljava/lang/String;

    iget-object v11, v1, Lcom/perfsight/apm/utils/d;->t:Ljava/lang/String;

    iget-object v12, v1, Lcom/perfsight/apm/utils/d;->u:Ljava/lang/String;

    iget-wide v13, v1, Lcom/perfsight/apm/utils/d;->j:J

    long-to-int v13, v13

    iget-wide v14, v1, Lcom/perfsight/apm/utils/d;->o:J

    long-to-int v14, v14

    move/from16 v16, v14

    iget-wide v14, v1, Lcom/perfsight/apm/utils/d;->k:J

    long-to-int v15, v14

    move/from16 v17, v15

    iget-wide v14, v1, Lcom/perfsight/apm/utils/d;->l:J

    long-to-int v15, v14

    iget v14, v1, Lcom/perfsight/apm/utils/d;->L:I

    iget-object v6, v1, Lcom/perfsight/apm/utils/d;->n:Ljava/lang/String;

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->M:Ljava/lang/String;

    move-object/from16 v20, v2

    iget v2, v1, Lcom/perfsight/apm/utils/d;->F:I

    move/from16 v21, v2

    iget v2, v1, Lcom/perfsight/apm/utils/d;->G:I

    move/from16 v22, v2

    iget v2, v1, Lcom/perfsight/apm/utils/d;->H:I

    move/from16 v23, v2

    iget v2, v1, Lcom/perfsight/apm/utils/d;->I:I

    move/from16 v24, v2

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->A:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->C:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->K:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->r:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->x:Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->y:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v1, Lcom/perfsight/apm/utils/d;->N:I

    move/from16 v31, v2

    iget v2, v1, Lcom/perfsight/apm/utils/d;->O:I

    invoke-static {}, Lcom/perfsight/apm/utils/d;->f()I

    move-result v33

    move/from16 v32, v2

    iget v2, v4, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v4, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static/range {p1 .. p1}, Lcom/perfsight/apm/utils/d;->c(Landroid/content/Context;)Z

    move-result v36

    move/from16 v35, v4

    iget v4, v1, Lcom/perfsight/apm/utils/d;->E:I

    move/from16 v37, v4

    iget-object v4, v1, Lcom/perfsight/apm/utils/d;->D:Ljava/lang/String;

    move-object/from16 v38, v4

    iget-object v4, v1, Lcom/perfsight/apm/utils/d;->B:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    move-object v0, v6

    move-object v6, v3

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move/from16 v15, v17

    move/from16 v17, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v34, v2

    move-object/from16 v39, v4

    invoke-static/range {v5 .. v43}, Lcom/perfsight/apm/jni/TApmNativeHelper;->initNativeDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFFZILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->b()Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    move-result-object v0

    iget-object v2, v1, Lcom/perfsight/apm/utils/d;->s:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfsight/apm/utils/d;->t:Ljava/lang/String;

    iget-object v4, v1, Lcom/perfsight/apm/utils/d;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->d()I

    move-result v6

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->e()I

    move-result v7

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->g()Z

    move-result v8

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->f()I

    move-result v9

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->h()Z

    move-result v10

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/perfsight/apm/jni/TApmNativeHelper;->nativeSetEngineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static a(ILcom/perfsight/apm/utils/d$a;)F
    .locals 5

    sget-object v0, Lcom/perfsight/apm/utils/d$a;->a:Lcom/perfsight/apm/utils/d$a;

    const-string v1, "/sys/devices/system/cpu/cpu"

    const/high16 v2, -0x40800000    # -1.0f

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cpufreq/cpuinfo_min_freq"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/perfsight/apm/utils/d$a;->b:Lcom/perfsight/apm/utils/d$a;

    if-ne p1, v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cpufreq/cpuinfo_max_freq"

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, ""

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const p1, 0x49742400    # 1000000.0f

    div-float/2addr p0, p1

    new-instance p1, Ljava/math/BigDecimal;

    float-to-double v3, p0

    invoke-direct {p1, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_3

    :catch_1
    nop

    move-object p1, v0

    goto :goto_4

    :catch_2
    nop

    move-object p1, v0

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    throw p0

    :catch_4
    nop

    :goto_4
    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_3
    return v2

    :catch_6
    nop

    :goto_5
    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :catch_7
    :cond_4
    return v2
.end method

.method public static a()Lcom/perfsight/apm/utils/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfsight/apm/utils/g<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    sget-object v6, Lcom/perfsight/apm/utils/d;->c:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v3, v7, :cond_1

    new-instance v7, Ljava/io/File;

    aget-object v9, v6, v3

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    shl-int v7, v8, v3

    int-to-long v7, v7

    add-long/2addr v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, " exist vm info file"

    :try_start_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v3, Lcom/perfsight/apm/utils/d;->d:[Lcom/perfsight/apm/utils/g;

    array-length v6, v3

    if-ge v2, v6, :cond_3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/perfsight/apm/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    shl-int v6, v8, v2

    int-to-long v6, v6

    add-long/2addr v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, " contains vm info "

    :try_start_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lcom/perfsight/apm/utils/g;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method static a(I)Lcom/perfsight/apm/utils/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/perfsight/apm/utils/g<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/perfsight/apm/utils/d;->a:Lcom/perfsight/apm/utils/g;

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/perfsight/apm/utils/d;->a:Lcom/perfsight/apm/utils/g;

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object p0, Lcom/perfsight/apm/utils/d;->a:Lcom/perfsight/apm/utils/g;

    return-object p0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_3

    sget-object v3, Lcom/perfsight/apm/utils/d$a;->b:Lcom/perfsight/apm/utils/d$a;

    invoke-static {v2, v3}, Lcom/perfsight/apm/utils/d;->a(ILcom/perfsight/apm/utils/d$a;)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    cmpg-float v5, v3, v0

    if-gez v5, :cond_1

    move v0, v3

    :cond_1
    if-lez v4, :cond_2

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    move v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "FREQ: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    new-instance p0, Lcom/perfsight/apm/utils/g;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object p0, Lcom/perfsight/apm/utils/d;->a:Lcom/perfsight/apm/utils/g;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/perfsight/apm/utils/g<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance v0, Lcom/perfsight/apm/utils/g;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/perfsight/apm/utils/d;->a(Ljava/io/File;)Lcom/perfsight/apm/utils/g;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Lcom/perfsight/apm/utils/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/perfsight/apm/utils/g<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/perfsight/apm/utils/g;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    mul-long v3, v3, v1

    const/16 p0, 0x14

    shr-long/2addr v3, p0

    mul-long v5, v5, v1

    shr-long v0, v5, p0

    new-instance p0, Lcom/perfsight/apm/utils/g;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_4
    :goto_4
    throw p0
.end method

.method public static b()I
    .locals 3

    const/16 v0, 0x8

    :try_start_0
    new-instance v1, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "/sys/devices/system/cpu/"

    :try_start_1
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/perfsight/apm/utils/c;

    invoke-direct {v2}, Lcom/perfsight/apm/utils/c;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v1, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    const/16 v1, 0x8

    :goto_0
    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/16 v1, 0x8

    :cond_1
    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/perfsight/apm/utils/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "N/A"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p0, Lcom/perfsight/apm/utils/g;

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v0, Lcom/perfsight/apm/utils/g;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance p0, Lcom/perfsight/apm/utils/g;

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    :goto_1
    new-instance p0, Lcom/perfsight/apm/utils/g;

    invoke-direct {p0, v0, v1}, Lcom/perfsight/apm/utils/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 6

    const-string v0, "qualcomm technologies, inc "

    const-string v1, "/proc/cpuinfo"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "NA"

    if-eqz v2, :cond_8

    const-string v4, "Hardware"

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    const-string v4, ":"

    :try_start_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v4, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_6

    :cond_1
    const/4 v4, 0x1

    aget-object v2, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v3

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v2

    :cond_3
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v4, 0x1b

    if-gt v0, v4, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v2

    :cond_4
    :try_start_9
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v0

    :cond_6
    :goto_4
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-object v3

    :cond_7
    :goto_6
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-object v3

    :cond_8
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_7
    nop

    move-object v2, v1

    goto :goto_b

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v2, :cond_9

    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_a

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    throw v0

    :catch_9
    nop

    :goto_b
    if-eqz v2, :cond_a

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_c

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_c
    const-string v0, "N/A"

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result p0

    return p0
.end method

.method public static d()I
    .locals 5

    const-string v0, "/proc/meminfo"

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v3, "\\s+"

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    shr-int/lit8 v1, v1, 0xa

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v1

    :cond_2
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return v1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_4

    :catch_3
    nop

    move-object v2, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    throw v1

    :catch_5
    nop

    :goto_6
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    return v1
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Lcom/perfsight/apm/utils/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static f()I
    .locals 8

    sget-object v0, Lcom/perfsight/apm/utils/d;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v6, v0, v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v2

    :cond_3
    return v5
.end method

.method private static g()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "na"

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/utils/d;->A:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/perfsight/apm/utils/d;->A:Ljava/lang/String;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/utils/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perfsight/apm/utils/d;->C:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perfsight/apm/utils/d;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/perfsight/apm/utils/d;->E:I

    iget-object v0, p0, Lcom/perfsight/apm/utils/d;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/perfsight/apm/utils/d;->C:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/perfsight/apm/utils/d;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/perfsight/apm/utils/d;->a(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/utils/d;->F:I

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/perfsight/apm/utils/d;->G:I

    iput v2, p0, Lcom/perfsight/apm/utils/d;->H:I

    iput v2, p0, Lcom/perfsight/apm/utils/d;->I:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/perfsight/apm/utils/d;->L:I

    invoke-static {}, Lcom/perfsight/apm/utils/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/utils/d;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/utils/d;->z:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perfsight/apm/utils/d;->s:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perfsight/apm/utils/d;->t:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/utils/d;->u:Ljava/lang/String;

    return-void
.end method
