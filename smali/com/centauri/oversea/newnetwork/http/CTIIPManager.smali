.class public Lcom/centauri/oversea/newnetwork/http/CTIIPManager;
.super Ljava/lang/Object;
.source "CTIIPManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APIPManager"


# instance fields
.field private ipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->updateTime:J

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

    return-void
.end method

.method private getIPKey()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSandboxBestIP()Ljava/lang/String;
    .locals 1

    .line 241
    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->isTestEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MIPMeasure;->getHighestSpeedIP()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private getUpdateTimeKey()Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_updateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readSPFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "readSPFile() decodeIPInfo: "

    .line 178
    const-string v1, "CentauriOverseaIP"

    invoke-static {p1, v1}, Lcom/centauri/oversea/comm/CTISPTools;->getSP(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 179
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getIPKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getUpdateTimeKey()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 181
    iget-wide v5, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->updateTime:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v5

    :goto_0
    iput-wide v3, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->updateTime:J

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v3, "APIPManager"

    if-nez p1, :cond_1

    .line 186
    :try_start_0
    const-string/jumbo p1, "utf-8"

    invoke-static {v1, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 194
    const-string p1, ";"

    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 195
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "save ip: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method private sandboxIPMeasure()V
    .locals 3

    .line 226
    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->isTestEnv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/centauri/oversea/comm/MIPMeasure;

    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lcom/centauri/oversea/comm/MIPMeasure;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/comm/MIPMeasure;->measure(Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MIPMeasure;->release()V

    .line 234
    iput-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipMeasure:Lcom/centauri/oversea/comm/MIPMeasure;

    :cond_2
    :goto_0
    return-void
.end method

.method private saveSPFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveIPInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIPManager"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "saveSPFile(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    .line 164
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "CentauriOverseaIP"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 166
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getIPKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 167
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getUpdateTimeKey()Ljava/lang/String;

    move-result-object p2

    iget-wide v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->updateTime:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIPList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRandomIp()Ljava/lang/String;
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->getSandboxBestIP()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 88
    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    .line 42
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->readSPFile(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getIPList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 53
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 54
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->saveSPFile(Landroid/content/Context;Ljava/lang/String;)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method public isIPOutdated()Z
    .locals 5

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->updateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLegalIP(Ljava/lang/String;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateIp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 113
    const-string v0, "APIPManager"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 123
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 128
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 129
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ip"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v5, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decodeIPInfo(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->updateTime:J

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->saveSPFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateIP: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->sandboxIPMeasure()V

    return-void
.end method
