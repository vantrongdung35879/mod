.class public Lcom/tencent/tme/live/n2/c;
.super Lcom/tencent/tme/live/l2/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/l2/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Window;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/n2/c;->b(Landroid/view/Window;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "force_black"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 2
    invoke-static {v0}, Lcom/tencent/tme/live/m2/b;->a(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "notch_height"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/tencent/tme/live/m2/b;->a(Landroid/content/Context;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(Landroid/view/Window;Lcom/tencent/tme/live/l2/c;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/live/l2/a;->a(Landroid/view/Window;Lcom/tencent/tme/live/l2/c;)V

    sget p2, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/n2/c;->b(Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_1

    :try_start_0
    const-class p2, Landroid/view/Window;

    const-string v0, "addExtraFlags"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    const/16 v0, 0x700

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/Window;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tme/live/m2/c;->a()Lcom/tencent/tme/live/m2/c;

    move-result-object p1

    const-string v0, "ro.miui.notch"

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/m2/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
