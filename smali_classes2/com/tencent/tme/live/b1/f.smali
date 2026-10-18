.class public Lcom/tencent/tme/live/b1/f;
.super Ljava/lang/Object;


# static fields
.field public static volatile b:Lcom/tencent/tme/live/b1/f;

.field public static final c:Ljava/util/Random;


# instance fields
.field public a:Lcom/tencent/tme/live/e0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/b1/f;->c:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tme/live/b1/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ILandroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/tme/live/b1/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;IILandroid/view/View;Lcom/tencent/tme/live/l0/c;)V
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/tme/live/b1/f$c;

    move-object v1, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tme/live/b1/f$c;-><init>(Ljava/lang/ref/Reference;IILandroid/view/View;Lcom/tencent/tme/live/l0/c;)V

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;IILcom/tencent/tme/live/l0/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;IILcom/tencent/tme/live/l0/a;)V
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/tencent/tme/live/b1/f;->c:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tencent/tme/live/k0/c;

    new-instance v1, Lcom/tencent/tme/live/f0/e;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tme/live/f0/e;-><init>(II)V

    const/4 p1, 0x1

    invoke-direct {v3, v0, v1, p1}, Lcom/tencent/tme/live/k0/c;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/f0/e;I)V

    invoke-static {}, Lcom/tencent/tme/live/e0/d;->c()Lcom/tencent/tme/live/e0/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tme/live/e0/d;->e()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/e0/d;->c()Lcom/tencent/tme/live/e0/d;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tme/live/b1/f;->b()Lcom/tencent/tme/live/b1/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tme/live/b1/f;->a()Lcom/tencent/tme/live/e0/c;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p3

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    const-string p1, "loadimage ImageLoader exception : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ImageLoaderUitl"

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;ZIIZLcom/tencent/tme/live/l0/c;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;ZIIZLcom/tencent/tme/live/l0/c;)V
    .locals 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v0, ""

    if-eqz p5, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object p5, Lcom/tencent/tme/live/b1/f;->c:Ljava/util/Random;

    invoke-virtual {p5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p5, Lcom/tencent/tme/live/k0/c;

    new-instance v0, Lcom/tencent/tme/live/f0/e;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1, v1}, Lcom/tencent/tme/live/f0/e;-><init>(II)V

    const/4 v1, 0x2

    invoke-direct {p5, p1, v0, v1}, Lcom/tencent/tme/live/k0/c;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/f0/e;I)V

    invoke-static {}, Lcom/tencent/tme/live/e0/d;->c()Lcom/tencent/tme/live/e0/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tme/live/e0/d;->e()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/e0/d;->c()Lcom/tencent/tme/live/e0/d;

    move-result-object p1

    invoke-static {}, Lcom/tencent/tme/live/b1/f;->b()Lcom/tencent/tme/live/b1/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/b1/f;->a()Lcom/tencent/tme/live/e0/c;

    move-result-object v0

    new-instance v8, Lcom/tencent/tme/live/b1/f$b;

    move-object v1, v8

    move v3, p4

    move-object v4, p6

    move-object v5, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tme/live/b1/f$b;-><init>(Ljava/lang/ref/Reference;ILcom/tencent/tme/live/l0/c;Ljava/lang/String;ZI)V

    const/4 p2, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p5

    move-object v6, v0

    move-object v7, v8

    move-object v8, p2

    .line 2
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    const-string p1, "loadImageForViewGroup ImageLoader exception"

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ImageLoaderUitl"

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lcom/tencent/tme/live/b1/f$a;

    invoke-direct {v7, v0, p2}, Lcom/tencent/tme/live/b1/f$a;-><init>(Ljava/lang/ref/Reference;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;ZIIZLcom/tencent/tme/live/l0/c;)V

    return-void
.end method

.method public static declared-synchronized b()Lcom/tencent/tme/live/b1/f;
    .locals 2

    const-class v0, Lcom/tencent/tme/live/b1/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/b1/f;->b:Lcom/tencent/tme/live/b1/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/b1/f;

    invoke-direct {v1}, Lcom/tencent/tme/live/b1/f;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/b1/f;->b:Lcom/tencent/tme/live/b1/f;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/b1/f;->b:Lcom/tencent/tme/live/b1/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/e0/c;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/b1/f;->a:Lcom/tencent/tme/live/e0/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tme/live/e0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/e0/c$a;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/tencent/tme/live/e0/c$a;->i:Z

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, v0, Lcom/tencent/tme/live/e0/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 7
    new-instance v1, Lcom/tencent/tme/live/e0/c;

    .line 8
    invoke-direct {v1, v0}, Lcom/tencent/tme/live/e0/c;-><init>(Lcom/tencent/tme/live/e0/c$a;)V

    .line 9
    iput-object v1, p0, Lcom/tencent/tme/live/b1/f;->a:Lcom/tencent/tme/live/e0/c;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/b1/f;->a:Lcom/tencent/tme/live/e0/c;

    return-object v0
.end method
