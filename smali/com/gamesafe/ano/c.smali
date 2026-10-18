.class public Lcom/gamesafe/ano/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    :try_start_0
    const-string v0, "android.app.ActivityThread$ActivityClientRecord"

    const-string v1, "paused"

    invoke-static {v0, p0, v1}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a()V
    .locals 1

    const-string v0, "jar_ver:7.7.22(2020/11/10)-jar-version"

    invoke-static {v0}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    sput-object p1, Lcom/gamesafe/ano/c;->b:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    check-cast p1, Landroid/content/Context;

    sput-object p1, Lcom/gamesafe/ano/c;->a:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 4

    const-string v0, "android.app.ActivityThread"

    sget-object v1, Lcom/gamesafe/ano/c;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mInitialApplication"

    invoke-static {v0, v1, v2}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/gamesafe/ano/c;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesafe/ano/c;->a:Landroid/content/Context;

    :cond_0
    :goto_0
    sget-object v0, Lcom/gamesafe/ano/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static c()Landroid/app/Activity;
    .locals 2

    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    const-string v1, "currentActivity"

    invoke-static {v0, v1}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static d()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/gamesafe/ano/c;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamesafe/ano/c;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/gamesafe/ano/c;->e()Landroid/app/Activity;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static e()Landroid/app/Activity;
    .locals 7

    const-string v0, "android.app.ActivityThread"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4, v5}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "mActivities"

    invoke-static {v0, v2, v4}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "java.util.Map"

    const-string/jumbo v4, "values"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v0, v5, v6}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    const-string v5, "android.app.ActivityThread$ActivityClientRecord"

    const-string v6, "activity"

    invoke-static {v5, v4, v6}, Lcom/gamesafe/ano/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Lcom/gamesafe/ano/c;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v5, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v5

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :catch_0
    return-object v1
.end method
