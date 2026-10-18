.class public Lcom/gcloudsdk/apollo/ApolloVoiceNetStatus;
.super Ljava/lang/Object;
.source "ApolloVoiceNetStatus.java"


# static fields
.field private static UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static mainContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Net()Ljava/lang/String;
    .locals 4

    .line 18
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceNetStatus;->UNKNOWN:Ljava/lang/String;

    .line 19
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceNetStatus;->mainContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 20
    const-string v1, "mainContext is null. May init java first"

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return-object v0

    .line 23
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    .line 25
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceNetStatus;->UNKNOWN:Ljava/lang/String;

    return-object v0

    .line 29
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 31
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceNetStatus;->UNKNOWN:Ljava/lang/String;

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 33
    const-string v0, "WiFi"

    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_8

    .line 35
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    if-eq v1, v3, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    .line 44
    const-string v0, "4G"

    goto :goto_2

    .line 42
    :cond_6
    :goto_0
    const-string v0, "3G"

    goto :goto_2

    .line 38
    :cond_7
    :goto_1
    const-string v0, "2G"

    .line 47
    :cond_8
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android Java Get Net status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return-object v0
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceNetStatus;->mainContext:Landroid/content/Context;

    return-void
.end method
