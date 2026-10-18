.class public Lcom/beetalk/sdk/helper/ImageLoader;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

.field private final cornerRadius:F

.field private final isCircle:Z

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceHolder:Landroid/graphics/drawable/Drawable;

.field private uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;IFLandroid/net/Uri;Z)V
    .locals 7

    .line 51
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;FLandroid/net/Uri;Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;IFLandroid/net/Uri;ZLcom/beetalk/sdk/helper/ImageLoader-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;IFLandroid/net/Uri;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;FLandroid/net/Uri;Z)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    .line 56
    iput-object p2, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "cache_images"

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/CacheHelper;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/beetalk/sdk/helper/CacheHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

    .line 58
    iput p3, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cornerRadius:F

    .line 59
    iput-object p4, p0, Lcom/beetalk/sdk/helper/ImageLoader;->uri:Landroid/net/Uri;

    .line 60
    iput-boolean p5, p0, Lcom/beetalk/sdk/helper/ImageLoader;->isCircle:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;FLandroid/net/Uri;ZLcom/beetalk/sdk/helper/ImageLoader-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;FLandroid/net/Uri;Z)V

    return-void
.end method

.method public static load(Landroid/net/Uri;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 2

    .line 40
    new-instance v0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Landroid/net/Uri;Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget-IA;)V

    return-object v0
.end method

.method public static load(Ljava/io/File;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 2

    .line 36
    new-instance v0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/io/File;Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget-IA;)V

    return-object v0
.end method

.method public static load(Ljava/lang/String;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 2

    .line 32
    new-instance v0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget-IA;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 73
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 74
    aget-object p1, p1, v2

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, p1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/beetalk/sdk/helper/ImageLoader;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_2
    const-string v2, ""

    .line 84
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    return-object v4

    .line 88
    :cond_3
    iget-object v3, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

    invoke-virtual {v3, v2}, Lcom/beetalk/sdk/helper/CacheHelper;->getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_a

    .line 92
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 93
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    .line 95
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_4

    .line 93
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1

    :cond_5
    :goto_2
    if-eqz p1, :cond_8

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 98
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 99
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_3
    move-object v3, p1

    goto :goto_4

    .line 100
    :cond_7
    iget-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_9

    .line 101
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->imageUriToBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    .line 105
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

    const v1, 0x2a300

    invoke-virtual {p1, v2, v3, v1}, Lcom/beetalk/sdk/helper/CacheHelper;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_9
    return-object v4

    .line 109
    :catch_0
    const-string p1, "ImageLoader failed to load image: out of memory"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catch_1
    move-exception p1

    .line 107
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_a
    :goto_5
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void

    .line 128
    :cond_2
    iget v1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cornerRadius:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 129
    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/ImageLoaderHelperKt;->toRoundedCorner(Landroid/graphics/Bitmap;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 130
    :cond_3
    iget-boolean v1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->isCircle:Z

    if-eqz v1, :cond_4

    .line 131
    invoke-static {p1}, Lcom/beetalk/sdk/helper/ImageLoaderHelperKt;->toCircular(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
