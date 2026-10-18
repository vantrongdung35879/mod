.class public Lcom/ihoc/mgpa/gradish/G1;
.super Lcom/ihoc/mgpa/gradish/F1;
.source "SourceFile"


# static fields
.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/F1;-><init>()V

    return-void
.end method

.method private d(Landroid/content/Context;)[I
    .locals 3

    .line 1
    sget-object p1, Lcom/ihoc/mgpa/gradish/G1;->c:[I

    if-nez p1, :cond_0

    .line 2
    const-string p1, "ro.oppo.screen.heteromorphism"

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/D1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    const-string v0, "\\:|\\,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 7
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    .line 8
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v1, p1

    .line 9
    filled-new-array {v0, v1}, [I

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/gradish/G1;->c:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/gradish/G1;->c:[I

    return-object p1
.end method


# virtual methods
.method public getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/G1;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/G1;->d(Landroid/content/Context;)[I

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    aget v4, v0, v1

    aget v0, v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 8
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRotation = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOTCHSDK_oppo"

    invoke-static {v5, v4}, Lcom/ihoc/mgpa/gradish/B1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x2

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v6, :cond_1

    const/4 v7, 0x3

    if-eq p1, v7, :cond_0

    .line 26
    const-string p1, "getRotation is error."

    invoke-static {v5, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    aget p1, p2, v3

    sub-int p1, v0, p1

    aget p2, p2, v1

    sub-int/2addr v2, p2

    div-int/2addr v2, v6

    add-int/2addr p2, v2

    invoke-virtual {v4, p1, v2, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 30
    :cond_1
    const-string p1, "rotation is not support."

    invoke-static {v5, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    aget p1, p2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v6

    aget p2, p2, v3

    sub-int p2, v0, p2

    add-int/2addr p1, v2

    invoke-virtual {v4, v2, p2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 32
    :cond_2
    aget p1, p2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v6

    aget p2, p2, v3

    add-int/2addr p1, v2

    invoke-virtual {v4, v1, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 33
    :cond_3
    aget p1, p2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v6

    add-int/2addr p1, v2

    aget p2, p2, v3

    invoke-virtual {v4, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/G1;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/G1;->d(Landroid/content/Context;)[I

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    aget v4, v0, v1

    aget v0, v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 8
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRotation = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOTCHSDK_oppo"

    invoke-static {v5, v4}, Lcom/ihoc/mgpa/gradish/B1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_0

    .line 26
    const-string p1, "getRotation is error."

    invoke-static {v5, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    aget p1, p2, v3

    sub-int/2addr v0, p1

    invoke-virtual {v4, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 30
    :cond_1
    const-string p1, "rotation is not support."

    invoke-static {v5, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    aget p1, p2, v3

    sub-int/2addr v0, p1

    invoke-virtual {v4, v1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 32
    :cond_2
    aget p1, p2, v3

    invoke-virtual {v4, p1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 33
    :cond_3
    aget p1, p2, v3

    invoke-virtual {v4, v1, p1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v4

    .line 53
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/F1;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Oppo_O"

    return-object v0
.end method

.method public hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
