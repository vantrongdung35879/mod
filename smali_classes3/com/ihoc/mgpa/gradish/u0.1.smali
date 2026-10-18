.class public Lcom/ihoc/mgpa/gradish/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field public static e:J


# instance fields
.field public a:Lcom/ihoc/mgpa/gradish/t0;

.field private b:Ljava/lang/String;

.field private c:Lcom/ihoc/mgpa/gradish/C;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_PDChecker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 21
    sput-wide v0, Lcom/ihoc/mgpa/gradish/u0;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->c:Lcom/ihoc/mgpa/gradish/C;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/u0;)Lcom/ihoc/mgpa/gradish/C;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/u0;->c:Lcom/ihoc/mgpa/gradish/C;

    return-object p0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/u0;Lcom/ihoc/mgpa/gradish/C;)Lcom/ihoc/mgpa/gradish/C;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/u0;->c:Lcom/ihoc/mgpa/gradish/C;

    return-object p1
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/u0;Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/u0;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;
    .locals 3

    .line 8
    const-string v0, "ret"

    .line 0
    const-string v1, "pd cloud file has ret, but ret is not 0, ple check ret: "

    .line 8
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    sget-object p1, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    const-string v0, "pd cloud file has no ret, ple check it!"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->C:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->D:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 18
    :cond_1
    new-instance p1, Lcom/ihoc/mgpa/gradish/t0;

    invoke-direct {p1}, Lcom/ihoc/mgpa/gradish/t0;-><init>()V

    .line 19
    invoke-virtual {p1, v2}, Lcom/ihoc/mgpa/gradish/t0;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/u0;->a:Lcom/ihoc/mgpa/gradish/t0;

    .line 22
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 24
    :cond_2
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->A:Lcom/ihoc/mgpa/gradish/C;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    sget-object p1, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    const-string v0, "pd cloud file content parse exception, not json."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->B:Lcom/ihoc/mgpa/gradish/C;

    return-object p1
.end method

.method private b()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v4, Lcom/ihoc/mgpa/gradish/u0;->e:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xa8c0

    const/4 v6, 0x1

    cmp-long v7, v0, v4

    if-lez v7, :cond_0

    return v6

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    div-long v2, v0, v2

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x93a80

    cmp-long v7, v4, v2

    if-gez v7, :cond_1

    .line 9
    sget-object v2, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local cloud file is new, last update time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {v4}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getStringTimeByLong(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 12
    :cond_1
    sget-object v2, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local cloud file is too old, last update time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {v4}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getStringTimeByLong(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 16
    :cond_2
    sget-object v0, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    const-string v1, "local cloud file doesn\'t exsit, sync download it now."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method private d()Lcom/ihoc/mgpa/gradish/C;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/ihoc/mgpa/gradish/l;

    sget-object v2, Lcom/ihoc/mgpa/gradish/l$c;->e:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-direct {v1, v2}, Lcom/ihoc/mgpa/gradish/l;-><init>(Lcom/ihoc/mgpa/gradish/l$c;)V

    .line 2
    new-instance v2, Lcom/ihoc/mgpa/gradish/u0$a;

    invoke-direct {v2, p0}, Lcom/ihoc/mgpa/gradish/u0$a;-><init>(Lcom/ihoc/mgpa/gradish/u0;)V

    const/16 v3, 0x7d0

    .line 21
    invoke-virtual {v1, v3, v3, v2}, Lcom/ihoc/mgpa/gradish/l;->a(IILcom/ihoc/mgpa/gradish/A;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "predownload cloud config code run exception, ple check code!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->z:Lcom/ihoc/mgpa/gradish/C;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->c:Lcom/ihoc/mgpa/gradish/C;

    goto :goto_0

    :catch_1
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "predownload cloud config request run io exception, ple check your network!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->w:Lcom/ihoc/mgpa/gradish/C;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->c:Lcom/ihoc/mgpa/gradish/C;

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->c:Lcom/ihoc/mgpa/gradish/C;

    return-object v0
.end method

.method private e()Lcom/ihoc/mgpa/gradish/C;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    const-string v1, "start to load local config . "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/u0;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    const-string v1, "local config content is empty or null."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->i:Lcom/ihoc/mgpa/gradish/C;

    return-object v0

    .line 7
    :cond_0
    invoke-direct {p0, v1}, Lcom/ihoc/mgpa/gradish/u0;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    sget-object v0, Lcom/ihoc/mgpa/gradish/u0;->d:Ljava/lang/String;

    const-string v1, "read local cloud config exception."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->h:Lcom/ihoc/mgpa/gradish/C;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ihoc/mgpa/gradish/C;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/u0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/u0;->d()Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/u0;->e()Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/ihoc/mgpa/gradish/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/u0;->a:Lcom/ihoc/mgpa/gradish/t0;

    return-object v0
.end method
