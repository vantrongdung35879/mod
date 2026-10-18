.class public Lcom/ihoc/mgpa/gradish/J1;
.super Lcom/ihoc/mgpa/gradish/F1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/F1;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "notch_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    const-string p1, "NOTCHSDK_xiaomi"

    const-string v0, "get notch height fail"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "notch_width"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    const-string p1, "NOTCHSDK_xiaomi"

    const-string v0, "get notch width fail"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/J1;->c(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/J1;->b(Landroid/content/Context;)I

    move-result v1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5
    aget v6, v2, v3

    aget v2, v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/J1;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    move v0, v4

    .line 13
    :cond_1
    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 14
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, "getRotation = "

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v6, "NOTCHSDK_xiaomi"

    invoke-static {v6, p2}, Lcom/ihoc/mgpa/gradish/B1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v7, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    .line 32
    const-string p1, "getRotation is error."

    invoke-static {v6, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sub-int p1, v2, v1

    sub-int/2addr v4, v0

    .line 33
    div-int/2addr v4, v7

    add-int/2addr v0, v4

    invoke-virtual {p2, p1, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 36
    :cond_3
    const-string p1, "rotation is not support."

    invoke-static {v6, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v4, v0

    .line 37
    div-int/2addr v4, v7

    sub-int p1, v2, v1

    add-int/2addr v0, v4

    invoke-virtual {p2, v4, p1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr v4, v0

    .line 38
    div-int/2addr v4, v7

    add-int/2addr v0, v4

    invoke-virtual {p2, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_5
    sub-int/2addr v4, v0

    .line 39
    div-int/2addr v4, v7

    add-int/2addr v0, v4

    invoke-virtual {p2, v4, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/J1;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/J1;->c(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/J1;->b(Landroid/content/Context;)I

    move-result v1

    .line 4
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6
    aget v6, v2, v3

    aget v2, v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/J1;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 14
    :cond_1
    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 15
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "getRotation = "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "NOTCHSDK_xiaomi"

    invoke-static {v6, v0}, Lcom/ihoc/mgpa/gradish/B1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_5

    if-eq p2, v5, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    .line 39
    const-string p1, "getRotation is error."

    invoke-static {v6, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sub-int/2addr v2, v1

    .line 40
    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 43
    :cond_3
    const-string p1, "rotation is not support."

    invoke-static {v6, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v2, v1

    .line 44
    invoke-virtual {v0, v3, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/J1;->isHideNotch(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 47
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, v3, p1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 49
    :cond_6
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    .line 71
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/F1;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Xiaomi_O"

    return-object v0
.end method

.method public hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 0

    .line 1
    const-string p1, "ro.miui.notch"

    const-string p2, "0"

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/gradish/D1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    return p2

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isHideNotch(Landroid/content/Context;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_black"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
