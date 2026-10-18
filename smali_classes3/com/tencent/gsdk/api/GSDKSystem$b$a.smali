.class Lcom/tencent/gsdk/api/GSDKSystem$b$a;
.super Ljava/lang/Object;
.source "GSDKSystem.java"

# interfaces
.implements Lcom/tencent/gsdk/m0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/api/GSDKSystem$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tencent/gsdk/api/GSDKSystem$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Lcom/tencent/gsdk/o;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->a()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "devices"

    const-string v1, "-1"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/s;->e(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "wifi_num"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/s;->d(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "wifi_rssi"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string p1, "gate_delay"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/s;->c(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "wifi_speed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/y0;->c(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "free_storage"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/y0;->e(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "total_storage"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/tencent/gsdk/s;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "signal_level"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "xg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/y0;->f(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "totalmem"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/p0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ldns"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "gsdk_report_login"

    invoke-static {p1, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
