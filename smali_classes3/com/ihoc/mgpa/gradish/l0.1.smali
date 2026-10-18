.class public Lcom/ihoc/mgpa/gradish/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/l0$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static volatile d:Lcom/ihoc/mgpa/gradish/l0;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/k0;

.field private b:Lcom/ihoc/mgpa/gradish/l0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_OptCfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/l0;->d:Lcom/ihoc/mgpa/gradish/l0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/ihoc/mgpa/gradish/l0$b;->c:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/l0;Lcom/ihoc/mgpa/gradish/k0;)Lcom/ihoc/mgpa/gradish/k0;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->a:Lcom/ihoc/mgpa/gradish/k0;

    return-object p1
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/l0;Lorg/json/JSONObject;)Lcom/ihoc/mgpa/gradish/k0;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/l0;->a(Lorg/json/JSONObject;)Lcom/ihoc/mgpa/gradish/k0;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/k0;
    .locals 2

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v1, "optimize config read failed, check local file!"

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->d:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ihoc/mgpa/gradish/l0;->a(Lorg/json/JSONObject;)Lcom/ihoc/mgpa/gradish/k0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v1, "optimize config\'s json data parse exception, check local file!"

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->j:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v1, "optimize config\'s json data parse failed, check local file!"

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->l:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    goto :goto_0

    :catch_2
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v1, "optimize config read exception, check local file!"

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->d:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    :goto_0
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/ihoc/mgpa/gradish/k0;
    .locals 2

    .line 30
    const-string v0, "config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 32
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v1, "config key don\'t exsit, ple check it."

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->h:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-object v0

    .line 36
    :cond_0
    const-string v1, "optimizeConfig"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 38
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v1, "config has no optimizeConfig, ple check it."

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->h:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-object v0

    .line 42
    :cond_1
    new-instance v1, Lcom/ihoc/mgpa/gradish/k0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/k0;-><init>()V

    .line 43
    invoke-virtual {v1, p1}, Lcom/ihoc/mgpa/gradish/k0;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v1, "optimizeConfig key parse failed, ple check it."

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->h:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-object v0

    .line 49
    :cond_2
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v0, "optimizeConfig config parse success."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object p1, Lcom/ihoc/mgpa/gradish/l0$b;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-object v1
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/l0;Lcom/ihoc/mgpa/gradish/l0$b;)Lcom/ihoc/mgpa/gradish/l0$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()Lcom/ihoc/mgpa/gradish/l0$b;
    .locals 5

    .line 1
    const-string v0, "parse config from cloud sync finished, result: "

    .line 0
    const-string v1, "parse opt config from local cloud file result: "

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    sget-object v1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v2, "checkOptCfg: context is null, maybe you should init first!"

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/ihoc/mgpa/gradish/l0$b;->i:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object v2, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 59
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ihoc/mgpa/gradish/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    sget-object v3, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v4, "start to parse opt config from local cloud file."

    invoke-static {v3, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v2}, Lcom/ihoc/mgpa/gradish/l0;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/k0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    const-string v1, "parse opt config from local cloud file success. "

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/ihoc/mgpa/gradish/l0$b;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    .line 66
    iput-object v2, p0, Lcom/ihoc/mgpa/gradish/l0;->a:Lcom/ihoc/mgpa/gradish/k0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 110
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    sget-object v1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v2, "start get optimize config from cloud sync. "

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v2, Lcom/ihoc/mgpa/gradish/l;

    sget-object v3, Lcom/ihoc/mgpa/gradish/l$c;->c:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-direct {v2, v3}, Lcom/ihoc/mgpa/gradish/l;-><init>(Lcom/ihoc/mgpa/gradish/l$c;)V

    .line 116
    new-instance v3, Lcom/ihoc/mgpa/gradish/l0$a;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/l0$a;-><init>(Lcom/ihoc/mgpa/gradish/l0;)V

    const/16 v4, 0x7d0

    invoke-virtual {v2, v4, v4, v3}, Lcom/ihoc/mgpa/gradish/l;->a(IILcom/ihoc/mgpa/gradish/A;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 151
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    sget-object v1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v2, "download optimize config exception."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v2, Lcom/ihoc/mgpa/gradish/l0$b;->j:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object v2, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 156
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    sget-object v1, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    const-string v2, "download optimize config io exception, ple check network."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/ihoc/mgpa/gradish/l0$b;->e:Lcom/ihoc/mgpa/gradish/l0$b;

    iput-object v2, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    return-object v0

    .line 167
    :goto_1
    sget-object v2, Lcom/ihoc/mgpa/gradish/l0;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    throw v1
.end method

.method public static c()Lcom/ihoc/mgpa/gradish/l0;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/l0;->d:Lcom/ihoc/mgpa/gradish/l0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/l0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/l0;->d:Lcom/ihoc/mgpa/gradish/l0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/l0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/l0;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/l0;->d:Lcom/ihoc/mgpa/gradish/l0;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/l0;->d:Lcom/ihoc/mgpa/gradish/l0;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->a:Lcom/ihoc/mgpa/gradish/k0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/k0;->a:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->j:Lcom/ihoc/mgpa/gradish/k0;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->j:Lcom/ihoc/mgpa/gradish/k0;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/k0;->a:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l0;->b()Lcom/ihoc/mgpa/gradish/l0$b;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/gradish/l0$b;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->a:Lcom/ihoc/mgpa/gradish/k0;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/k0;->a:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->a:Lcom/ihoc/mgpa/gradish/k0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/k0;->b:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->j:Lcom/ihoc/mgpa/gradish/k0;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->j:Lcom/ihoc/mgpa/gradish/k0;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/k0;->b:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l0;->b()Lcom/ihoc/mgpa/gradish/l0$b;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/gradish/l0$b;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->a:Lcom/ihoc/mgpa/gradish/k0;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/k0;->b:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l0;->b:Lcom/ihoc/mgpa/gradish/l0$b;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l0$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
