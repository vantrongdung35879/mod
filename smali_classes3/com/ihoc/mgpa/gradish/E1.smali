.class public Lcom/ihoc/mgpa/gradish/E1;
.super Lcom/ihoc/mgpa/gradish/H1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/H1;-><init>()V

    return-void
.end method


# virtual methods
.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/H1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/DisplayCutout;)I

    move-result p2

    .line 6
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/view/DisplayCutout;)I

    move-result v3

    .line 7
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout;)I

    move-result v4

    .line 8
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/view/DisplayCutout;)I

    move-result v0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p1

    .line 12
    aget v2, p1, v2

    .line 13
    aget p1, p1, v1

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr v2, v0

    sub-int/2addr p1, v3

    invoke-direct {v1, v4, p2, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/E1;->isHideNotch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p2

    .line 23
    aget v0, p2, v2

    aget v3, p2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 24
    aget v3, p2, v2

    aget p2, p2, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 26
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 27
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRotation = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOTCHSDK_huawei_P"

    invoke-static {v5, v4}, Lcom/ihoc/mgpa/gradish/B1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eq v3, v1, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    .line 37
    const-string p1, "getRotation is error."

    invoke-static {v5, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {v4, v2, v2, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v4

    .line 48
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/H1;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Huawei_Android_P"

    return-object v0
.end method

.method public isHideNotch(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_notch_status"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
