.class public Lcom/perfsight/apm/c/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/perfsight/apm/utils/d;

.field protected c:Lcom/perfsight/apm/c/s$a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/utils/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iput-object p1, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/perfsight/apm/c/p;->b:Lcom/perfsight/apm/utils/d;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    if-nez v0, :cond_c

    new-instance v0, Lcom/perfsight/apm/c/s$a;

    invoke-direct {v0}, Lcom/perfsight/apm/c/s$a;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v1, p0, Lcom/perfsight/apm/c/p;->b:Lcom/perfsight/apm/utils/d;

    iget-object v1, v1, Lcom/perfsight/apm/utils/d;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfsight/apm/c/s$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v1, v0, Lcom/perfsight/apm/c/s$a;->a:Ljava/lang/String;

    const-string v2, "na"

    if-nez v1, :cond_0

    iput-object v2, v0, Lcom/perfsight/apm/c/s$a;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v1, p0, Lcom/perfsight/apm/c/p;->b:Lcom/perfsight/apm/utils/d;

    iget-object v1, v1, Lcom/perfsight/apm/utils/d;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfsight/apm/c/s$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v1, v0, Lcom/perfsight/apm/c/s$a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    iput-object v2, v0, Lcom/perfsight/apm/c/s$a;->b:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perfsight/apm/c/s$a;->c:Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfsight/apm/c/s$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v1, v0, Lcom/perfsight/apm/c/s$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfsight/apm/c/s$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-virtual {p1}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    :cond_5
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v0, p1, Lcom/perfsight/apm/c/s$a;->c:Ljava/lang/String;

    if-nez v0, :cond_6

    iput-object v2, p1, Lcom/perfsight/apm/c/s$a;->c:Ljava/lang/String;

    :cond_6
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v0, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object v2, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    :cond_7
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v0, p1, Lcom/perfsight/apm/c/s$a;->e:Ljava/lang/String;

    if-nez v0, :cond_8

    iput-object v2, p1, Lcom/perfsight/apm/c/s$a;->e:Ljava/lang/String;

    :cond_8
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v0, p1, Lcom/perfsight/apm/c/s$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "Vendor: %s, Render: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getPlatformInfo()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfsight/apm/c/s$a;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object p2, p1, Lcom/perfsight/apm/c/s$a;->f:Ljava/lang/String;

    if-nez p2, :cond_9

    iput-object v2, p1, Lcom/perfsight/apm/c/s$a;->f:Ljava/lang/String;

    :cond_9
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object p2, p1, Lcom/perfsight/apm/c/s$a;->f:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfsight/apm/c/s$a;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-static {}, Lcom/perfsight/apm/utils/d;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfsight/apm/c/s$a;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object p2, p1, Lcom/perfsight/apm/c/s$a;->g:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfsight/apm/c/s$a;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object p2, p1, Lcom/perfsight/apm/c/s$a;->g:Ljava/lang/String;

    if-nez p2, :cond_a

    iput-object v2, p1, Lcom/perfsight/apm/c/s$a;->g:Ljava/lang/String;

    :cond_a
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object p2, p0, Lcom/perfsight/apm/c/p;->b:Lcom/perfsight/apm/utils/d;

    iget-wide v0, p2, Lcom/perfsight/apm/utils/d;->o:J

    long-to-int v1, v0

    add-int/lit16 v1, v1, 0x3ff

    const/16 v0, 0x400

    div-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x400

    iput v1, p1, Lcom/perfsight/apm/c/s$a;->h:I

    iget-wide v1, p2, Lcom/perfsight/apm/utils/d;->j:J

    long-to-int v2, v1

    iput v2, p1, Lcom/perfsight/apm/c/s$a;->i:I

    iget-wide v1, p2, Lcom/perfsight/apm/utils/d;->k:J

    long-to-int p2, v1

    iput p2, p1, Lcom/perfsight/apm/c/s$a;->j:I

    iget p2, p1, Lcom/perfsight/apm/c/s$a;->j:I

    const/16 v1, 0x64

    if-ge p2, v1, :cond_b

    const/16 p2, 0xbb8

    iput p2, p1, Lcom/perfsight/apm/c/s$a;->j:I

    :cond_b
    iget-object p1, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iput v0, p1, Lcom/perfsight/apm/c/s$a;->k:I

    invoke-virtual {p1}, Lcom/perfsight/apm/c/s$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
