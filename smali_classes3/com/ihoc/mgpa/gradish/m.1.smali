.class public Lcom/ihoc/mgpa/gradish/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Lcom/ihoc/mgpa/gradish/C;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CloudControlChecker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MGPA"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mgpaCloud.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->b:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->d:Lcom/ihoc/mgpa/gradish/C;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/m;)Lcom/ihoc/mgpa/gradish/C;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/m;->d:Lcom/ihoc/mgpa/gradish/C;

    return-object p0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/m;Lcom/ihoc/mgpa/gradish/C;)Lcom/ihoc/mgpa/gradish/C;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/m;->d:Lcom/ihoc/mgpa/gradish/C;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/ihoc/mgpa/gradish/C;
    .locals 2

    .line 3
    :try_start_0
    const-string v0, "[getCloudCtrlFromAssets]: start to load"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    const-string v1, "[getCloudCtrlFromAssets]: local config content is empty or null."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->i:Lcom/ihoc/mgpa/gradish/C;

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/gradish/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isJSONValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/gradish/m;->b(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    return-object v0

    .line 13
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->j:Lcom/ihoc/mgpa/gradish/C;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_2

    .line 17
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->i:Lcom/ihoc/mgpa/gradish/C;

    return-object v0

    .line 19
    :cond_2
    const-string v1, "[getCloudCtrlFromAssets]: read local cloud config exception."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->h:Lcom/ihoc/mgpa/gradish/C;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 21
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->decryptFromBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[decrypt]: encrypt fail."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    const-string p1, ""

    return-object p1
.end method

.method public b()Lcom/ihoc/mgpa/gradish/C;
    .locals 3

    .line 18
    new-instance v0, Lcom/ihoc/mgpa/gradish/l;

    sget-object v1, Lcom/ihoc/mgpa/gradish/l$c;->b:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-direct {v0, v1}, Lcom/ihoc/mgpa/gradish/l;-><init>(Lcom/ihoc/mgpa/gradish/l$c;)V

    .line 19
    new-instance v1, Lcom/ihoc/mgpa/gradish/m$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/gradish/m$a;-><init>(Lcom/ihoc/mgpa/gradish/m;)V

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/gradish/l;->b(Lcom/ihoc/mgpa/gradish/A;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    sget-object v0, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    const-string v1, "download cloud config code run exception, ple check!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->z:Lcom/ihoc/mgpa/gradish/C;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->d:Lcom/ihoc/mgpa/gradish/C;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    sget-object v0, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download cloud config request run io exception in times: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/m;->b()Lcom/ihoc/mgpa/gradish/C;

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->w:Lcom/ihoc/mgpa/gradish/C;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->d:Lcom/ihoc/mgpa/gradish/C;

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->d:Lcom/ihoc/mgpa/gradish/C;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/gradish/L;->a(Lorg/json/JSONObject;)I

    move-result p1

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setcloudFuncOpenList()V

    if-lez p1, :cond_0

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    const-string v1, "parse cloud control some value to json exception, maybe you lost some config."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-gez p1, :cond_1

    .line 9
    sget-object p1, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    const-string v0, "parse cloud control json\'s value exception, check json."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->k:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 12
    :cond_1
    const-string v0, "parse cloud control json finished. result: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    sget-object p1, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    const-string v0, "file content parse exception, not json."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->j:Lcom/ihoc/mgpa/gradish/C;

    return-object p1
.end method

.method public c()Lcom/ihoc/mgpa/gradish/C;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "CloudChecker: start to load local config . "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    const-string v1, "CloudChecker: local config content is empty or null."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->i:Lcom/ihoc/mgpa/gradish/C;

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/gradish/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isJSONValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lcom/ihoc/mgpa/gradish/m;->b(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/gradish/m;->b(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    sget-object v0, Lcom/ihoc/mgpa/gradish/m;->e:Ljava/lang/String;

    const-string v1, "CloudChecker: read local cloud config exception."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->h:Lcom/ihoc/mgpa/gradish/C;

    return-object v0
.end method
