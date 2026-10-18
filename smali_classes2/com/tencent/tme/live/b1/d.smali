.class public Lcom/tencent/tme/live/b1/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/b1/d$b;
    }
.end annotation


# static fields
.field public static h:Lcom/tencent/tme/live/b1/d;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/f;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public volatile g:Z


# direct methods
.method public static synthetic $r8$lambda$017eBtPlr1e9vR-PjvPzdSVAQ5U(Lcom/tencent/tme/live/b1/d;Lcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/b1/d;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/tencent/tme/live/b1/d;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/b1/d;->g:Z

    return-void
.end method

.method public static a()Lcom/tencent/tme/live/b1/d;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/b1/d;->h:Lcom/tencent/tme/live/b1/d;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tme/live/b1/d;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/tencent/tme/live/b1/d;

    invoke-direct {v1}, Lcom/tencent/tme/live/b1/d;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/b1/d;->h:Lcom/tencent/tme/live/b1/d;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/tme/live/b1/d;->h:Lcom/tencent/tme/live/b1/d;

    return-object v0
.end method

.method public static a(Lcom/tencent/tme/live/b1/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/b1/d;->d:Ljava/util/List;

    const-string v1, "EmojResourceManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    const-string p0, "startNextDownloadTask, downloadTasks null"

    invoke-static {v1, p0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/b1/d;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/w0/f;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/tencent/tme/live/b1/d;->b:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/tme/live/b1/d;->c:Landroid/os/Handler;

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/tme/live/b1/d;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/tme/live/b1/d;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/tme/live/b1/d;->c:Landroid/os/Handler;

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/live/b1/d;->g:Z

    iget-object v1, p0, Lcom/tencent/tme/live/b1/d;->c:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/tme/live/b1/d$b;

    invoke-direct {v2, p0, v0}, Lcom/tencent/tme/live/b1/d$b;-><init>(Lcom/tencent/tme/live/b1/d;Lcom/tencent/tme/live/w0/f;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "download finished, total download:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v0

    const-string v4, "emojListChanged"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object v2, p0, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    :cond_5
    iput-boolean v3, p0, Lcom/tencent/tme/live/b1/d;->g:Z

    iget-object v0, p0, Lcom/tencent/tme/live/b1/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/b1/d;->c()V

    :goto_1
    return-void
.end method

.method private a(Lcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getEmojList:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "EmojResourceManager"

    invoke-static {v0, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-boolean p3, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    .line 6
    const-string p1, "getEmojList callback is null"

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/16 v2, 0xc8

    if-eq p2, v2, :cond_1

    .line 7
    iput-boolean p3, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "getEmojList failed, code:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {v0, p2, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {p1, v1}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    iput-boolean p3, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    .line 10
    const-string p2, "getEmojList responseJson is null"

    invoke-static {v0, p2, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-interface {p1, v1}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2
    const-string p2, "result"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 13
    iput-boolean p3, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "getEmojList resultBiz is:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-static {v0, p2, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-interface {p1, v1}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    iput-boolean p3, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    const-string v2, "msg"

    const-string v3, ""

    invoke-virtual {p4, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEmojList, resultBiz:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", msgBiz:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "list"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_5

    .line 16
    :cond_5
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-gtz p4, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge p3, p4, :cond_9

    :try_start_1
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 17
    :cond_7
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pic"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "order"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Lcom/tencent/tme/live/w0/f;

    invoke-direct {v5, v3, v2, v4}, Lcom/tencent/tme/live/w0/f;-><init>(IILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 18
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    move-object v5, v1

    :goto_3
    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_9
    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_a

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_a
    invoke-interface {p1, v1}, Lcom/tencent/tme/live/v0/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/b1/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    return p1
.end method


# virtual methods
.method public a(ILjava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b1/d;->a(I)Lcom/tencent/tme/live/w0/f;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    const/16 v3, 0x11

    invoke-virtual {v1, v2, p3, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 p1, 0x2c

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v1, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public final a(I)Lcom/tencent/tme/live/w0/f;
    .locals 4

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w0/f;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v2, Lcom/tencent/tme/live/w0/f;->a:I

    if-ne v3, p1, :cond_2

    return-object v2

    :cond_4
    return-object v1
.end method

.method public final a(Lcom/tencent/tme/live/v0/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/v0/g<",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/f;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/tencent/tme/live/b1/d$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/b1/d$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/b1/d;Lcom/tencent/tme/live/v0/g;)V

    const-string p1, "getMeme"

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method

.method public b(I)Landroid/text/SpannableStringBuilder;
    .locals 17

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tme/live/b1/d;->a(I)Lcom/tencent/tme/live/w0/f;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    if-nez v3, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/graphics/Bitmap;

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/tencent/tme/live/v0/l;->a(I)I

    move-result v12

    const/4 v13, 0x0

    if-nez v11, :cond_3

    move-object v11, v13

    goto :goto_1

    .line 1
    :cond_3
    :try_start_0
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v15, v3, v4

    new-array v10, v15, [I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, v10

    move-object v14, v10

    move/from16 v10, v16

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit16 v12, v12, 0xff

    div-int/2addr v12, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v15, :cond_4

    shl-int/lit8 v3, v12, 0x18

    aget v4, v14, v0

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v3, "EmojResourceManager"

    invoke-static {v3, v0, v13}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v11, :cond_5

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "bitmap"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, 0x6

    const/16 v5, 0x11

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/b1/d;->g:Z

    const-string v1, "EmojResourceManager"

    if-eqz v0, :cond_0

    const-string v0, "loadEmojResource task exist"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/b1/d;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "loadEmojResource isRequesting"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/tencent/tme/live/b1/d$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/b1/d$a;-><init>(Lcom/tencent/tme/live/b1/d;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/v0/g;)V

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/b1/d;->b:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    iput-object v0, p0, Lcom/tencent/tme/live/b1/d;->b:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "EmojResourceManager"

    const-string v2, "handlerThread is null"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b1/d;->a(I)Lcom/tencent/tme/live/w0/f;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method
