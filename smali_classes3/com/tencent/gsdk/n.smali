.class public Lcom/tencent/gsdk/n;
.super Ljava/lang/Object;
.source "CloudConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/n$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/gsdk/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/o;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/n;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/tencent/gsdk/n$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/gsdk/n$a<",
            "Lcom/tencent/gsdk/h0;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/tencent/gsdk/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/tencent/gsdk/a0;

    invoke-static {}, Lcom/tencent/gsdk/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/gsdk/a0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/gsdk/a0;->a()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/tencent/gsdk/h0;

    invoke-direct {v1}, Lcom/tencent/gsdk/h0;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/gsdk/h0;->b(Ljava/lang/String;)Lcom/tencent/gsdk/h0;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lcom/tencent/gsdk/h0;->c:Ljava/lang/String;

    .line 11
    sget-object v2, Lcom/tencent/gsdk/n;->a:Landroid/content/Context;

    const-string v3, "gsdk_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 13
    iget v3, v0, Lcom/tencent/gsdk/h0;->b:I

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v0, v2}, Lcom/tencent/gsdk/h0;->c(Landroid/content/SharedPreferences;)Lcom/tencent/gsdk/h0;

    .line 16
    iget v2, v0, Lcom/tencent/gsdk/h0;->b:I

    if-eqz v2, :cond_0

    .line 18
    new-instance v0, Lcom/tencent/gsdk/h0;

    invoke-direct {v0}, Lcom/tencent/gsdk/h0;-><init>()V

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0, v2}, Lcom/tencent/gsdk/h0;->b(Landroid/content/SharedPreferences;)V

    const/4 v2, 0x1

    .line 23
    :goto_0
    new-instance v3, Lcom/tencent/gsdk/n$a;

    iget-object v4, v0, Lcom/tencent/gsdk/a;->a:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v4, v1}, Lcom/tencent/gsdk/n$a;-><init>(Lcom/tencent/gsdk/a;ILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CloudConfigManager has not initialized yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Lcom/tencent/gsdk/n$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/gsdk/n$a<",
            "Lcom/tencent/gsdk/w;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/tencent/gsdk/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 31
    sget-object v0, Lcom/tencent/gsdk/n;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/gsdk/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 32
    iget v2, v0, Lcom/tencent/gsdk/w;->b:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    new-instance v0, Lcom/tencent/gsdk/a0;

    .line 35
    invoke-static {}, Lcom/tencent/gsdk/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/gsdk/a0;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/gsdk/w$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/gsdk/w$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/tencent/gsdk/a0;->a(Lcom/tencent/gsdk/a;)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance p1, Lcom/tencent/gsdk/w;

    invoke-direct {p1}, Lcom/tencent/gsdk/w;-><init>()V

    invoke-virtual {p1, p0}, Lcom/tencent/gsdk/w;->b(Ljava/lang/String;)Lcom/tencent/gsdk/w;

    move-result-object v0

    .line 38
    iget-object p0, v0, Lcom/tencent/gsdk/w;->c:Ljava/lang/String;

    .line 39
    sget-object p1, Lcom/tencent/gsdk/n;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GemGameCloudConfig-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 41
    iget v1, v0, Lcom/tencent/gsdk/w;->b:I

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {v0, p1}, Lcom/tencent/gsdk/w;->c(Landroid/content/SharedPreferences;)Lcom/tencent/gsdk/w;

    .line 44
    iget p1, v0, Lcom/tencent/gsdk/w;->b:I

    if-eqz p1, :cond_2

    .line 46
    new-instance v0, Lcom/tencent/gsdk/w;

    invoke-direct {v0}, Lcom/tencent/gsdk/w;-><init>()V

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 49
    :cond_3
    sget-object v1, Lcom/tencent/gsdk/n;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, p1}, Lcom/tencent/gsdk/w;->b(Landroid/content/SharedPreferences;)V

    const/4 v1, 0x1

    .line 53
    :goto_1
    new-instance p1, Lcom/tencent/gsdk/n$a;

    iget-object p2, v0, Lcom/tencent/gsdk/a;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2, p0}, Lcom/tencent/gsdk/n$a;-><init>(Lcom/tencent/gsdk/a;ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 54
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CloudConfigManager has not initialized yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/gsdk/n;->a:Landroid/content/Context;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
