.class public Lcom/tencent/mna/s1;
.super Ljava/lang/Object;
.source "LoadLibraryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/s1$a;,
        Lcom/tencent/mna/s1$c;,
        Lcom/tencent/mna/s1$b;
    }
.end annotation


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/s1;->a:Ljava/io/File;

    return-object v0
.end method

.method private static declared-synchronized a(Ljava/lang/ClassLoader;Ljava/io/File;)Z
    .locals 4

    const-string v0, "LoadLibraryUtil:::sdk int:"

    const-string v1, "LoadLibraryUtil:::classLoader or folder is illegal "

    const-class v2, Lcom/tencent/mna/s1;

    monitor-enter v2

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget v1, Lcom/tencent/mna/base/utils/a$a;->a:I

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/16 v0, 0x19

    if-ne v1, v0, :cond_1

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/utils/a;->a()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v3, :cond_2

    :cond_1
    if-le v1, v0, :cond_3

    .line 12
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/tencent/mna/s1$c;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    :try_start_2
    invoke-static {p0, p1}, Lcom/tencent/mna/s1$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 17
    :catchall_1
    :try_start_3
    invoke-static {p0, p1}, Lcom/tencent/mna/s1$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x17

    if-lt v1, v0, :cond_4

    .line 22
    :try_start_4
    invoke-static {p0, p1}, Lcom/tencent/mna/s1$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 24
    :catchall_2
    :try_start_5
    invoke-static {p0, p1}, Lcom/tencent/mna/s1$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xe

    if-lt v1, v0, :cond_5

    .line 27
    invoke-static {p0, p1}, Lcom/tencent/mna/s1$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V

    .line 29
    :cond_5
    :goto_0
    sput-object p1, Lcom/tencent/mna/s1;->a:Ljava/io/File;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    const/4 p0, 0x1

    return p0

    .line 30
    :cond_6
    :goto_1
    :try_start_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v2

    const/4 p0, 0x0

    return p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/tencent/mna/s1;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/tencent/mna/s1;->a(Ljava/lang/ClassLoader;Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
