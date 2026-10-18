.class public Lcom/intlgame/api/config/INTLConfig;
.super Ljava/lang/Object;
.source "INTLConfig.java"


# static fields
.field public static final ADJUST_CHANNEL_START_EVENT_TOKEN_ANDROID:Ljava/lang/String; = "ADJUST_CHANNEL_START_EVENT_TOKEN_ANDROID"

.field public static final ADJUST_LOGIN_EVENT_TOKEN_ANDROID:Ljava/lang/String; = "ADJUST_LOGIN_EVENT_TOKEN_ANDROID"

.field public static final ADJUST_REGISTER_EVENT_TOKEN_ANDROID:Ljava/lang/String; = "ADJUST_REGISTER_EVENT_TOKEN_ANDROID"

.field public static final AIHELP_ALWAYS_SHOW_HUMAN_SUPPORT:Ljava/lang/String; = "AIHELP_ALWAYS_SHOW_HUMAN_SUPPORT"

.field public static final ANALYTICS_AUTH_REPORT_ENABLE:Ljava/lang/String; = "ANALYTICS_AUTH_REPORT_ENABLE"

.field public static final DEFAULT_AUTH_OVERTIME:I = 0x2d

.field public static final PROJECT_APAS:Ljava/lang/String; = "APAS"

.field public static final PROJECT_INTL:Ljava/lang/String; = "INTL"

.field public static final QQ_AUTH_OVERTIME:I = 0x5a

.field public static final WECHAT_AUTH_OVERTIME:I = 0x5a

.field public static final WHATSAPP_AUTH_OVERTIME:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBool(Ljava/lang/String;Z)Z
    .locals 1

    .line 100
    const-string v0, "INTL"

    invoke-static {p0, p1, v0}, Lcom/intlgame/api/config/INTLConfig;->getBool(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static native getBool(Ljava/lang/String;ZLjava/lang/String;)Z
.end method

.method public static getConfig(Ljava/lang/String;I)I
    .locals 1

    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    :try_start_0
    invoke-static {p0, p1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "catch exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getConfig(Ljava/lang/String;J)J
    .locals 0

    .line 70
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "catch exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "INTL"

    invoke-static {p0, p1, v0}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getConfig(Ljava/lang/String;Z)Z
    .locals 1

    .line 54
    const-string v0, "1"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 55
    :goto_0
    invoke-static {p0, p1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static native getJSSDKCommonWebDomainUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "INTL"

    invoke-static {p0, p1, v0}, Lcom/intlgame/api/config/INTLConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getTwitterUrl()Ljava/lang/String;
.end method

.method public static native isINTLProductionEnvironment()Z
.end method

.method public static setConfig(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 50
    const-string v0, "INTL"

    invoke-static {p0, v0}, Lcom/intlgame/api/config/INTLConfig;->setConfig(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static native setConfig(Ljava/util/HashMap;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public static native setProjectID(Ljava/lang/String;)V
.end method
