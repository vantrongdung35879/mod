.class public Lcom/centauri/comm/log/internal/CTILogger;
.super Ljava/lang/Object;
.source "CTILogger.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_SILENT:I = 0x6

.field public static final LOG_LEVEL_VERBOSE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4


# instance fields
.field private appender:Lcom/centauri/comm/log/internal/CTILogAppender;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogger;->appender:Lcom/centauri/comm/log/internal/CTILogAppender;

    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v3, v1, 0xe10

    if-gt v2, v3, :cond_0

    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 81
    :pswitch_0
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 78
    :pswitch_1
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 75
    :pswitch_2
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 69
    :pswitch_3
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 72
    :pswitch_4
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 66
    :pswitch_5
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 88
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const-string p0, "print log error: <%s>%s"

    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "centauriComm<Log>"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static open()Lcom/centauri/comm/log/internal/CTILogger;
    .locals 1

    .line 31
    new-instance v0, Lcom/centauri/comm/log/internal/CTILogger;

    invoke-direct {v0}, Lcom/centauri/comm/log/internal/CTILogger;-><init>()V

    .line 33
    invoke-direct {v0}, Lcom/centauri/comm/log/internal/CTILogger;->openAppender()V

    return-object v0
.end method

.method private openAppender()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/centauri/comm/log/internal/CTILogAppender;->open()Lcom/centauri/comm/log/internal/CTILogAppender;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogger;->appender:Lcom/centauri/comm/log/internal/CTILogAppender;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogger;->appender:Lcom/centauri/comm/log/internal/CTILogAppender;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/centauri/comm/log/internal/CTILogAppender;->flushAndWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 44
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v3, 0x3

    aget-object v0, v0, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "flush log error: %s\n, stackTrace: %s"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "centauriComm<Log>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogger;->appender:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-virtual {v0, p1}, Lcom/centauri/comm/log/internal/CTILogAppender;->append(Ljava/lang/String;)V

    return-void
.end method
