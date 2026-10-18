.class public Lcom/ihoc/mgpa/gradish/Y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;

.field private static volatile d:Lcom/ihoc/mgpa/gradish/Y0;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/b1;

.field private b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/Y0;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/Y0;->d:Lcom/ihoc/mgpa/gradish/Y0;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getThreadMatchRules()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getThreadMatchRules()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/Y0;->b:Ljava/util/regex/Pattern;

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/gradish/Y0$a;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget v2, v2, Lcom/ihoc/mgpa/gradish/L$a;->s:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ihoc/mgpa/gradish/Y0$a;-><init>(Lcom/ihoc/mgpa/gradish/Y0;II)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/Y0;->a:Lcom/ihoc/mgpa/gradish/b1;

    :cond_0
    return-void
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/Y0;
    .locals 2

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/Y0;->d:Lcom/ihoc/mgpa/gradish/Y0;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/ihoc/mgpa/gradish/Y0;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/Y0;->d:Lcom/ihoc/mgpa/gradish/Y0;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ihoc/mgpa/gradish/Y0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/Y0;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/Y0;->d:Lcom/ihoc/mgpa/gradish/Y0;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/Y0;->d:Lcom/ihoc/mgpa/gradish/Y0;

    return-object v0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/Y0;)Ljava/util/regex/Pattern;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/Y0;->b:Ljava/util/regex/Pattern;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/Y0;->a:Lcom/ihoc/mgpa/gradish/b1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/b1;->a()V

    :cond_0
    return-void
.end method
