.class public Lcom/gcloudsdk/apollo/ApolloVoiceLog;
.super Ljava/lang/Object;
.source "ApolloVoiceLog.java"


# static fields
.field private static final DEBUG:I = 0x1

.field private static final DISABLE:I = 0x0

.field private static final ERROR:I = 0x5

.field private static final INFO:I = 0x2

.field private static LOGTAG:Ljava/lang/String; = "GVoiceAndroidLog"

.field private static final TRACE:I = 0x3

.field private static final WARNING:I = 0x4

.field private static enableLog:Z = true

.field private static logLevel:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EnableLog(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->enableLog:Z

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 2

    .line 29
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->enableLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->logLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->enableLog:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .locals 2

    .line 35
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->enableLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 36
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogW(Ljava/lang/String;)V
    .locals 2

    .line 41
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->enableLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 42
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static SetLogLevel(I)V
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 20
    sput p0, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->logLevel:I

    :cond_0
    return-void
.end method
