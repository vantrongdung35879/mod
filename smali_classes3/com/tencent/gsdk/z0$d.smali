.class Lcom/tencent/gsdk/z0$d;
.super Ljava/lang/Object;
.source "SystemInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tencent/gsdk/z0$d;->e:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/gsdk/z0$d;->e:[Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {p1, v1, v0}, Lcom/tencent/gsdk/z0$c;->a(Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xd

    .line 4
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/tencent/gsdk/z0$c;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/gsdk/z0$d;->a:J

    const/16 v0, 0xe

    .line 5
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/tencent/gsdk/z0$c;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/gsdk/z0$d;->b:J

    const/16 v0, 0xf

    .line 6
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/tencent/gsdk/z0$c;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/gsdk/z0$d;->c:J

    const/16 v0, 0x10

    .line 7
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/tencent/gsdk/z0$c;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/gsdk/z0$d;->d:J

    return-void
.end method

.method public static a()Lcom/tencent/gsdk/z0$d;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/self/stat"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    new-instance v2, Lcom/tencent/gsdk/z0$d;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/gsdk/z0$d;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 11
    :goto_0
    :try_start_3
    const-string v3, "get my cpu stat info failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    new-instance v2, Lcom/tencent/gsdk/z0$d;

    invoke-direct {v2, v0}, Lcom/tencent/gsdk/z0$d;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 16
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    return-object v2

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 20
    :catch_4
    :cond_1
    throw v1
.end method


# virtual methods
.method public b()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/gsdk/z0$d;->a:J

    iget-wide v2, p0, Lcom/tencent/gsdk/z0$d;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/gsdk/z0$d;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/gsdk/z0$d;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method
