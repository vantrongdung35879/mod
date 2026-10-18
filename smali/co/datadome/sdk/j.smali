.class Lco/datadome/sdk/j;
.super Lco/datadome/sdk/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/datadome/sdk/j$a;
    }
.end annotation


# instance fields
.field private final k:Lco/datadome/sdk/h;

.field private final l:Lco/datadome/sdk/a;

.field private m:Lco/datadome/sdk/DataDomeSDKListener;

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lco/datadome/sdk/k;

.field private p:Lco/datadome/sdk/j$a;


# direct methods
.method constructor <init>(Lco/datadome/sdk/DataDomeSDKListener;Ljava/lang/ref/WeakReference;Lco/datadome/sdk/k;Lco/datadome/sdk/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/datadome/sdk/DataDomeSDKListener;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;",
            "Lco/datadome/sdk/k;",
            "Lco/datadome/sdk/j$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lco/datadome/sdk/l;-><init>()V

    iput-object p2, p0, Lco/datadome/sdk/j;->n:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lco/datadome/sdk/j;->m:Lco/datadome/sdk/DataDomeSDKListener;

    iput-object p3, p0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    invoke-direct {p0}, Lco/datadome/sdk/j;->c()Lco/datadome/sdk/h;

    move-result-object p1

    iput-object p1, p0, Lco/datadome/sdk/j;->k:Lco/datadome/sdk/h;

    invoke-direct {p0}, Lco/datadome/sdk/j;->b()Lco/datadome/sdk/a;

    move-result-object p1

    iput-object p1, p0, Lco/datadome/sdk/j;->l:Lco/datadome/sdk/a;

    iput-object p4, p0, Lco/datadome/sdk/j;->p:Lco/datadome/sdk/j$a;

    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Landroid/hardware/camera2/CameraCharacteristics;)Landroidx/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lco/datadome/sdk/j;->a(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "flash"

    invoke-virtual {v0, v1, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b()Lco/datadome/sdk/a;
    .locals 5

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iget-object v1, p0, Lco/datadome/sdk/j;->n:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lco/datadome/sdk/j;->m:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz v1, :cond_0

    const/16 v3, 0x1f8

    const-string v4, "Empty application context."

    invoke-interface {v1, v3, v4}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Lco/datadome/sdk/a;

    invoke-direct {v1, v2, v0}, Lco/datadome/sdk/a;-><init>(ZLjava/util/Map;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lco/datadome/sdk/j;->n:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lco/datadome/sdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lco/datadome/sdk/j;->d()Landroidx/collection/ArrayMap;

    move-result-object v0

    :cond_3
    new-instance v1, Lco/datadome/sdk/a;

    invoke-direct {v1, v2, v0}, Lco/datadome/sdk/a;-><init>(ZLjava/util/Map;)V

    return-object v1
.end method

.method private c()Lco/datadome/sdk/h;
    .locals 4

    iget-object v0, p0, Lco/datadome/sdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/datadome/sdk/j;->m:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz v0, :cond_0

    const/16 v2, 0x1f8

    const-string v3, "Empty application context."

    invoke-interface {v0, v2, v3}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lco/datadome/sdk/h;

    invoke-direct {v0, v1}, Lco/datadome/sdk/h;-><init>(I)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lco/datadome/sdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Lco/datadome/sdk/h;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-direct {v3, v2}, Lco/datadome/sdk/h;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v3, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_2

    iput v1, v3, Landroid/graphics/Point;->x:I

    :cond_2
    iget v0, v3, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_3

    iput v1, v3, Landroid/graphics/Point;->y:I

    :cond_3
    return-object v3

    :cond_4
    new-instance v0, Lco/datadome/sdk/h;

    invoke-direct {v0, v1}, Lco/datadome/sdk/h;-><init>(I)V

    return-object v0
.end method

.method private d()Landroidx/collection/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lco/datadome/sdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/datadome/sdk/j;->b(Landroid/hardware/camera2/CameraCharacteristics;)Landroidx/collection/ArrayMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method a()Lokhttp3/RequestBody;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    iget-object v1, v1, Lco/datadome/sdk/k;->d:Ljava/lang/String;

    invoke-static {v1}, Lco/datadome/sdk/DataDomeUtils;->stringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    iget-object v2, v2, Lco/datadome/sdk/k;->f:Ljava/lang/String;

    invoke-static {v2}, Lco/datadome/sdk/DataDomeUtils;->stringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    iget-object v3, v3, Lco/datadome/sdk/k;->e:Ljava/util/List;

    if-nez v3, :cond_0

    const-string v3, "[]"

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    iget-object v4, v4, Lco/datadome/sdk/k;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/datadome/sdk/DataDomeEvent;

    invoke-virtual {v5}, Lco/datadome/sdk/DataDomeEvent;->customJsonString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, v0, Lco/datadome/sdk/j;->l:Lco/datadome/sdk/a;

    invoke-virtual {v4}, Lco/datadome/sdk/a;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lco/datadome/sdk/l;->d:Ljava/lang/String;

    const-string v6, ""

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    sget-object v7, Lco/datadome/sdk/l;->e:Ljava/lang/String;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v7, v6

    :goto_3
    sget-object v8, Lco/datadome/sdk/l;->f:Ljava/lang/String;

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move-object v8, v6

    :goto_4
    sget-object v9, Lco/datadome/sdk/l;->g:Ljava/lang/String;

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    move-object v9, v6

    :goto_5
    sget-object v10, Lco/datadome/sdk/l;->h:Ljava/lang/String;

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    move-object v10, v6

    :goto_6
    sget-object v11, Lco/datadome/sdk/l;->i:Ljava/lang/String;

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_7
    move-object v11, v6

    :goto_7
    sget-object v12, Lco/datadome/sdk/l;->j:Ljava/lang/String;

    if-eqz v12, :cond_8

    goto :goto_8

    :cond_8
    move-object v12, v6

    :goto_8
    iget-object v13, v0, Lco/datadome/sdk/j;->p:Lco/datadome/sdk/j$a;

    sget-object v14, Lco/datadome/sdk/j$a;->b:Lco/datadome/sdk/j$a;

    if-ne v13, v14, :cond_9

    const-string v13, "android-java-manual"

    goto :goto_9

    :cond_9
    const-string v13, "android-java-okhttp"

    :goto_9
    new-instance v14, Lokhttp3/FormBody$Builder;

    invoke-direct {v14}, Lokhttp3/FormBody$Builder;-><init>()V

    iget-object v15, v0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    iget-object v15, v15, Lco/datadome/sdk/k;->a:Ljava/lang/String;

    move-object/from16 v16, v13

    const-string v13, "cid"

    invoke-virtual {v14, v13, v15}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v13

    const-string v14, "ddv"

    const-string v15, "1.13.9"

    invoke-virtual {v13, v14, v15}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v13

    iget-object v14, v0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    iget-object v14, v14, Lco/datadome/sdk/k;->c:Ljava/lang/String;

    const-string v15, "ddvc"

    invoke-virtual {v13, v15, v14}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v13

    iget-object v14, v0, Lco/datadome/sdk/j;->o:Lco/datadome/sdk/k;

    iget-object v14, v14, Lco/datadome/sdk/k;->b:Ljava/lang/String;

    const-string v15, "ddk"

    invoke-virtual {v13, v15, v14}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v13

    const-string v14, "request"

    invoke-virtual {v13, v14, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v13, "os"

    const-string v14, "Android"

    invoke-virtual {v1, v13, v14}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    sget-object v13, Lco/datadome/sdk/l;->a:Ljava/lang/String;

    const-string v14, "osr"

    invoke-virtual {v1, v14, v13}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    sget-object v13, Lco/datadome/sdk/l;->b:Ljava/lang/String;

    const-string v14, "osn"

    invoke-virtual {v1, v14, v13}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v14, Lco/datadome/sdk/l;->c:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "osv"

    invoke-virtual {v1, v14, v13}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string/jumbo v13, "ua"

    invoke-virtual {v1, v13, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lco/datadome/sdk/j;->k:Lco/datadome/sdk/h;

    iget v13, v13, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "screen_x"

    invoke-virtual {v1, v13, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lco/datadome/sdk/j;->k:Lco/datadome/sdk/h;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "screen_y"

    invoke-virtual {v1, v13, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lco/datadome/sdk/j;->k:Lco/datadome/sdk/h;

    invoke-virtual {v6}, Lco/datadome/sdk/h;->a()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "screen_d"

    invoke-virtual {v1, v6, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "mdl"

    invoke-virtual {v1, v2, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "prd"

    invoke-virtual {v1, v2, v7}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "mnf"

    invoke-virtual {v1, v2, v8}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "dev"

    invoke-virtual {v1, v2, v9}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "hrd"

    invoke-virtual {v1, v2, v10}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "fgp"

    invoke-virtual {v1, v2, v11}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string/jumbo v2, "tgs"

    invoke-virtual {v1, v2, v12}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "inte"

    move-object/from16 v13, v16

    invoke-virtual {v1, v2, v13}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    return-object v1
.end method
