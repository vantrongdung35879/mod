.class public Lcom/ihoc/mgpa/gradish/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/ihoc/mgpa/gradish/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/gradish/d0;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/d0;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/gradish/d0;->a:Lcom/ihoc/mgpa/gradish/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/ihoc/mgpa/gradish/d0;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/d0;->a:Lcom/ihoc/mgpa/gradish/d0;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 10
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
