.class public Lcom/ihoc/mgpa/gradish/I1;
.super Lcom/ihoc/mgpa/gradish/F1;
.source "SourceFile"


# static fields
.field private static c:Z = false

.field private static d:[I = null

.field private static e:Z = true


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

.method private b(Landroid/content/Context;)I
    .locals 7

    const-string v0, "NOTCHSDK_vivo"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2
    const-string v3, "android.util.FtDeviceInfo"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    const-string v3, "getEarDnWidth"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    const-string v2, "getEarDnWidth Exception"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    .line 12
    :catch_1
    const-string p1, "getEarDnWidth NoSuchMethodException: getEarDnWidth"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 13
    :catch_2
    const-string p1, "getEarDnWidth ClassNotFoundException: FtDeviceInfo"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v1
.end method

.method private c(Landroid/content/Context;)I
    .locals 7

    const-string v0, "NOTCHSDK_vivo"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2
    const-string v3, "android.util.FtDeviceInfo"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    const-string v3, "getEarHeight"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    const-string v2, "getEarHeight Exception"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    .line 12
    :catch_1
    const-string p1, "getEarHeight NoSuchMethodException: getEarHeight"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 13
    :catch_2
    const-string p1, "getEarHeight ClassNotFoundException: FtDeviceInfo"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v1
.end method

.method private d(Landroid/content/Context;)I
    .locals 7

    const-string v0, "NOTCHSDK_vivo"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2
    const-string v3, "android.util.FtDeviceInfo"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    const-string v3, "getEarUpWidth"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    const-string v2, "getEarUpWidth Exception"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    .line 12
    :catch_1
    const-string p1, "getEarUpWidth NoSuchMethodException: getEarUpWidth"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 13
    :catch_2
    const-string p1, "getEarUpWidth ClassNotFoundException: FtDeviceInfo"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v1
.end method

.method private e(Landroid/content/Context;)[I
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/I1;->d:[I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/I1;->d(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/I1;->b(Landroid/content/Context;)I

    move-result v1

    .line 4
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/I1;->c(Landroid/content/Context;)I

    move-result p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    filled-new-array {v0, p1}, [I

    move-result-object p1

    sput-object p1, Lcom/ihoc/mgpa/gradish/I1;->d:[I

    .line 9
    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/gradish/I1;->d:[I

    return-object p1
.end method


# virtual methods
.method public getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/I1;->e(Landroid/content/Context;)[I

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/F1;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    aget v4, v0, v1

    aget v0, v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 7
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRotation = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOTCHSDK_vivo"

    invoke-static {v5, v4}, Lcom/ihoc/mgpa/gradish/B1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x2

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v6, :cond_1

    const/4 v7, 0x3

    if-eq p1, v7, :cond_0

    .line 25
    const-string p1, "getRotation is error."

    invoke-static {v5, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    aget p1, p2, v3

    sub-int p1, v0, p1

    aget p2, p2, v1

    sub-int/2addr v2, p2

    div-int/2addr v2, v6

    add-int/2addr p2, v2

    invoke-virtual {v4, p1, v2, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "rotation is not support."

    invoke-static {v5, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    aget p1, p2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v6

    aget p2, p2, v3

    sub-int p2, v0, p2

    add-int/2addr p1, v2

    invoke-virtual {v4, v2, p2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 31
    :cond_2
    aget p1, p2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v6

    aget p2, p2, v3

    add-int/2addr p1, v2

    invoke-virtual {v4, v1, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 32
    :cond_3
    aget p1, p2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v6

    add-int/2addr p1, v2

    aget p2, p2, v3

    invoke-virtual {v4, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/I1;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/I1;->e(Landroid/content/Context;)[I

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

    const-string v5, "NOTCHSDK_vivo"

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
    const-string v0, "Vivo_O"

    return-object v0
.end method

.method public hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 5

    .line 1
    const-string p2, "NOTCHSDK_vivo"

    sget-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 5
    const-string v1, "android.util.FtFeature"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 6
    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v3, 0x20

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->e:Z

    .line 17
    sput-boolean p1, Lcom/ihoc/mgpa/gradish/I1;->c:Z

    return p1

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    const-string v1, "hasNotchInScreen Exception"

    invoke-static {p2, v1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->e:Z

    .line 22
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->c:Z

    return v0

    .line 23
    :catch_1
    :try_start_2
    const-string p1, "hasNotchInScreen NoSuchMethodException: isFeatureSupport"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->e:Z

    .line 29
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->c:Z

    return v0

    .line 30
    :catch_2
    :try_start_3
    const-string p1, "hasNotchInScreen ClassNotFoundException: FtFeature"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/gradish/B1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->e:Z

    .line 38
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->c:Z

    return v0

    .line 39
    :catchall_0
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->e:Z

    .line 40
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/I1;->c:Z

    return v0

    .line 44
    :cond_0
    sget-boolean p1, Lcom/ihoc/mgpa/gradish/I1;->c:Z

    return p1
.end method
