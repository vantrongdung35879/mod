.class public Lcom/tencent/tme/live/t/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/tme/live/b/a;->c:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/b/a;->d:Ljava/lang/String;

    const-string v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dredd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/tencent/tme/live/b/a;->c:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/b/a;->d:Ljava/lang/String;

    const-string v2, "MagicBox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
