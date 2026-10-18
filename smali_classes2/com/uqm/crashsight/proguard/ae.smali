.class public final Lcom/uqm/crashsight/proguard/ae;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Lcom/uqm/crashsight/proguard/ae;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private final e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

.field private final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/uqm/crashsight/proguard/ae;->b:I

    .line 35
    iput p2, p0, Lcom/uqm/crashsight/proguard/ae;->c:I

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iput p2, p0, Lcom/uqm/crashsight/proguard/ae;->d:I

    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iput p3, p0, Lcom/uqm/crashsight/proguard/ae;->d:I

    .line 41
    :goto_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/ae;->e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    .line 42
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/ae;->f:Ljava/util/Queue;

    .line 43
    iput-boolean p2, p0, Lcom/uqm/crashsight/proguard/ae;->g:Z

    return-void
.end method

.method private static a(Ljava/io/File;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 177
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 180
    const-string v1, "Max open files"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 183
    array-length v1, p0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p0, v3

    .line 184
    const-string v6, "\\d+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 185
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 201
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_1
    return v4

    .line 199
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 195
    :goto_2
    :try_start_4
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_4

    .line 199
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 201
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_5

    .line 199
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 204
    :cond_5
    :goto_4
    throw p0
.end method

.method private static a(IILjava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FD infos:\nmax_FDs:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ncurrent_FDs:"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\navailable_FDs:"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/io/File;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 214
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 216
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 218
    invoke-static {v4}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a()V
    .locals 2

    .line 82
    sget-object v0, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v0, Lcom/uqm/crashsight/proguard/ae;->g:Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(III)V
    .locals 3

    const-class v0, Lcom/uqm/crashsight/proguard/ae;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    if-nez v1, :cond_0

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    .line 70
    const-string v1, "Starting to monitor the number of FDs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/uqm/crashsight/proguard/ae;

    invoke-direct {v1, p0, p1, p2}, Lcom/uqm/crashsight/proguard/ae;-><init>(III)V

    sput-object v1, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    .line 72
    new-instance p0, Ljava/lang/Thread;

    sget-object p1, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    const-string p1, "CrashSight_FdRoutine"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(IIZ)Z
    .locals 10

    const-class v0, Lcom/uqm/crashsight/proguard/ae;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v1

    if-lez p0, :cond_1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getFdCount()I

    move-result v1

    if-le v1, p0, :cond_1

    if-eqz p2, :cond_0

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Number of FDs over limit: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "FD counts: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    const-string v6, "FD over limit report"

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v3, 0xc

    move v8, p1

    invoke-static/range {v3 .. v9}, Lcom/uqm/crashsight/crashreport/CrashReport;->postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 62
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .line 146
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x1

    .line 148
    const-string v2, ""

    if-gt v0, v1, :cond_0

    return-object v2

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/limits"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {v4}, Lcom/uqm/crashsight/proguard/ae;->a(Ljava/io/File;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    return-object v2

    .line 160
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/fd"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    .line 168
    :cond_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/ae;->a([Ljava/io/File;)Ljava/util/Map;

    move-result-object v2

    .line 169
    array-length v0, v0

    .line 171
    invoke-static {v1, v0, v2}, Lcom/uqm/crashsight/proguard/ae;->a(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(III)V
    .locals 3

    .line 91
    sget-object v0, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-lez p0, :cond_0

    .line 93
    iput p0, v0, Lcom/uqm/crashsight/proguard/ae;->b:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Reset FD monitor interval:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    if-lez p1, :cond_1

    .line 97
    sget-object p0, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    iput p1, p0, Lcom/uqm/crashsight/proguard/ae;->c:I

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Reset FD monitor limit:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x1

    if-eq p2, p0, :cond_3

    const/4 p0, 0x3

    if-ne p2, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    if-eq p2, p0, :cond_4

    .line 104
    sget-object p0, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    iput v1, p0, Lcom/uqm/crashsight/proguard/ae;->d:I

    .line 105
    const-string p0, "Reset FD monitor dumpType:0"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    sget-object p0, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    iput p2, p0, Lcom/uqm/crashsight/proguard/ae;->d:I

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Reset FD monitor dumpType:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/ae;->e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getFdCount()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/uqm/crashsight/proguard/ae;->f:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/uqm/crashsight/proguard/ae;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/uqm/crashsight/proguard/ae;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 120
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/proguard/ae;->c:I

    if-gt v0, v1, :cond_2

    .line 124
    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/ae;->g:Z

    if-eqz v0, :cond_1

    return-void

    .line 129
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/proguard/ae;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of FDs over limit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/uqm/crashsight/proguard/ae;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/ae;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FD counts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/ae;->f:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    iget v7, p0, Lcom/uqm/crashsight/proguard/ae;->d:I

    const/4 v8, 0x0

    const/16 v2, 0xc

    const-string v5, "FD over limit report"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/uqm/crashsight/crashreport/CrashReport;->postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    return-void
.end method
