.class public Lcom/ihoc/mgpa/gradish/H1;
.super Lcom/ihoc/mgpa/gradish/F1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/F1;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/H1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/H1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/DisplayCutout;)I

    move-result p2

    .line 6
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/view/DisplayCutout;)I

    move-result v1

    .line 7
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout;)I

    move-result v2

    .line 8
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/view/DisplayCutout;)I

    move-result v0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v3, 0x0

    .line 12
    aget v3, p1, v3

    const/4 v4, 0x1

    .line 13
    aget p1, p1, v4

    sub-int/2addr v3, v0

    sub-int/2addr p1, v1

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, p2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/F1;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Android_P"

    return-object v0
.end method

.method public hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/H1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
