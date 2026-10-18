.class public Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Thread;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->a:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->c:Ljava/lang/Thread;

    .line 27
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->d:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->e:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/crash/h5/a;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 78
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/h5/a;-><init>()V

    .line 81
    const-string v2, "projectRoot"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->a:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v0

    .line 85
    :cond_1
    const-string v2, "context"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->b:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    return-object v0

    .line 89
    :cond_2
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->c:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    return-object v0

    .line 93
    :cond_3
    const-string v2, "userAgent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->d:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    return-object v0

    .line 97
    :cond_4
    const-string v2, "language"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->e:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    return-object v0

    .line 101
    :cond_5
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->f:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->f:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 105
    :cond_6
    const-string v2, "stacktrace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    return-object v0

    .line 109
    :cond_7
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const-string v4, "SyntaxError"

    const/4 v5, 0x0

    if-gez v3, :cond_8

    :try_start_1
    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->f:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 111
    const-string p0, "H5 crash stack\'s format is wrong!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_8
    if-ltz v3, :cond_9

    add-int/lit8 v3, v3, 0x1

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->h:Ljava/lang/String;

    .line 117
    :cond_9
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 118
    const-string v2, ""

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->h:Ljava/lang/String;

    .line 120
    :cond_a
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->g:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->g:Ljava/lang/String;

    if-nez v2, :cond_b

    return-object v0

    .line 124
    :cond_b
    const-string v2, "file"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->i:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->i:Ljava/lang/String;

    if-nez v2, :cond_c

    return-object v0

    .line 128
    :cond_c
    const-string v2, "lineNumber"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->j:J

    .line 129
    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->j:J

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gez v4, :cond_d

    return-object v0

    .line 132
    :cond_d
    const-string v2, "columnNumber"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->k:J

    .line 133
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->k:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_e

    return-object v0

    .line 136
    :cond_e
    const-string v1, "H5 crash information is following: "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[projectRoot]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[context]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[url]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[userAgent]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[language]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[name]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[message]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[stacktrace]: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[file]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[lineNumber]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[columnNumber]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/a;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :cond_f
    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 150
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_10
    :goto_1
    return-object v0
.end method

.method public static getInstance(Lcom/uqm/crashsight/crashreport/CrashReport$WebViewInterface;)Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 39
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 42
    :cond_0
    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;-><init>()V

    .line 43
    sget-object v2, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->c:Ljava/lang/Thread;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1055
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 1057
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 1058
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v4

    .line 1059
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "crashreport"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1062
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1064
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_1
    iput-object v0, v1, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->d:Ljava/lang/String;

    .line 1068
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/uqm/crashsight/crashreport/CrashReport$WebViewInterface;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "[WebView] ContentDescription"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object v0, v1, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->e:Ljava/util/Map;

    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public printLog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    .line 173
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Log from js: %s"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public reportJSException(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 184
    const-string p1, "Payload from JS is null."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    const-string p1, "Same payload from js. Please check whether you\'ve injected crashSight.js more than one times."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 193
    :cond_1
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->b:Ljava/lang/String;

    .line 194
    const-string v1, "Handling JS exception ..."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->a(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/crash/h5/a;

    move-result-object p1

    if-nez p1, :cond_2

    .line 197
    const-string p1, "Failed to parse payload."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 200
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2045
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2046
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2047
    const-string v2, "[JS] projectRoot"

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    :cond_3
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2050
    const-string v2, "[JS] context"

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    :cond_4
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2053
    const-string v2, "[JS] url"

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    :cond_5
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2056
    const-string v2, "[JS] userAgent"

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    :cond_6
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 2062
    const-string v2, "[JS] file"

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    :cond_7
    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->j:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 2065
    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/crash/h5/a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "[JS] lineNumber"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_8
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 202
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 203
    const-string p1, "Java Stack"

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/h5/H5JavaScriptInterface;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
