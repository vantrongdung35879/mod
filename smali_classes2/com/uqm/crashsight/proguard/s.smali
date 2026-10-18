.class public final Lcom/uqm/crashsight/proguard/s;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field public static a:Z = true

.field private static b:Ljava/text/SimpleDateFormat; = null

.field private static c:I = 0x7800

.field private static d:Ljava/lang/StringBuilder; = null

.field private static e:Ljava/lang/StringBuilder; = null

.field private static f:Z = false

.field private static g:Z = true

.field private static h:Ljava/util/concurrent/ExecutorService;

.field private static i:I

.field private static final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/proguard/s;->j:Ljava/lang/Object;

    .line 37
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/s;->b:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/uqm/crashsight/proguard/s;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->f:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/uqm/crashsight/proguard/s;->h:Ljava/util/concurrent/ExecutorService;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/uqm/crashsight/proguard/s;->e:Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    .line 75
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lcom/uqm/crashsight/proguard/s;->i:I

    .line 76
    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->g:Z

    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v1

    sget v2, Lcom/uqm/crashsight/proguard/s;->c:I

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->initNativeLog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    const/4 v1, 0x1

    .line 82
    :try_start_2
    sput-boolean v1, Lcom/uqm/crashsight/proguard/s;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    monitor-exit v0

    return-void

    .line 69
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static a(I)V
    .locals 1

    if-gez p0, :cond_0

    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/s;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sput p0, Lcom/uqm/crashsight/proguard/s;->c:I

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/uqm/crashsight/proguard/s;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->f:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    :try_start_1
    sget-object v1, Lcom/uqm/crashsight/proguard/s;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/uqm/crashsight/proguard/s$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/uqm/crashsight/proguard/s$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 149
    :try_start_2
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    monitor-exit v0

    return-void

    .line 135
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    goto :goto_0

    .line 2153
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2154
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2155
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2156
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2157
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LogUtil] Whether can record user log into native: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 106
    sput-boolean p0, Lcom/uqm/crashsight/proguard/s;->g:Z

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b()[B
    .locals 3

    .line 208
    sget-boolean v0, Lcom/uqm/crashsight/proguard/s;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 211
    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/s;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsightlog.txt"

    invoke-static {v1, v0, v2}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/s;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/uqm/crashsight/proguard/s;->g:Z

    return v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 53
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->H:Lcom/uqm/crashsight/crashreport/a;

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->H:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/uqm/crashsight/crashreport/a;->appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 58
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/uqm/crashsight/proguard/s;

    monitor-enter v0

    .line 155
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    int-to-long v1, v1

    .line 2180
    sget-object v3, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2181
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 2183
    sget-object v5, Lcom/uqm/crashsight/proguard/s;->b:Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_0

    .line 2184
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2186
    :cond_0
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2188
    :goto_0
    sget-object v5, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/uqm/crashsight/proguard/s;->i:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    .line 2190
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    sget p0, Lcom/uqm/crashsight/proguard/s;->c:I

    const/4 p1, 0x3

    if-le p0, p1, :cond_2

    .line 2192
    sget-object p0, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sget p2, Lcom/uqm/crashsight/proguard/s;->c:I

    add-int/lit8 v1, p2, -0x3

    if-le p0, v1, :cond_1

    .line 2193
    sget-object p0, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2195
    :cond_1
    sget-object p0, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    const-string p2, "\u0001\r\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2197
    :cond_2
    sget-object p2, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2199
    :goto_1
    sget-object p0, Lcom/uqm/crashsight/proguard/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    sget-object p2, Lcom/uqm/crashsight/proguard/s;->j:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 160
    :try_start_1
    sget-object v1, Lcom/uqm/crashsight/proguard/s;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 162
    :cond_3
    sget-object v1, Lcom/uqm/crashsight/proguard/s;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget v2, Lcom/uqm/crashsight/proguard/s;->c:I

    if-le v1, v2, :cond_4

    .line 163
    sget-object v1, Lcom/uqm/crashsight/proguard/s;->e:Ljava/lang/StringBuilder;

    const-string v2, "\u0001\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 v1, p0, 0x1

    .line 166
    sget v2, Lcom/uqm/crashsight/proguard/s;->c:I

    if-le v1, v2, :cond_3

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p0, Lcom/uqm/crashsight/proguard/s;->e:Ljava/lang/StringBuilder;

    .line 168
    const-string p0, "[appendLogInCache] an error occurred when deleting old log"

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 173
    :try_start_2
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 175
    :cond_4
    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
