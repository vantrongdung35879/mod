.class public final Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/helper/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageTarget"
.end annotation


# instance fields
.field private cornerRadius:F

.field private filePath:Ljava/lang/String;

.field private isCircle:Z

.field private mPlaceHolderRes:I

.field private mUrl:Ljava/lang/String;

.field private placeHolder:Landroid/graphics/drawable/Drawable;

.field private uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->cornerRadius:F

    .line 148
    iput-boolean v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->isCircle:Z

    .line 160
    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->uri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->cornerRadius:F

    .line 148
    iput-boolean v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->isCircle:Z

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->filePath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->cornerRadius:F

    .line 148
    iput-boolean v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->isCircle:Z

    .line 152
    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public into(Landroid/widget/ImageView;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    if-nez v0, :cond_1

    .line 190
    new-instance v7, Lcom/beetalk/sdk/helper/ImageLoader;

    iget-object v2, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->placeHolder:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->cornerRadius:F

    iget-object v4, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->uri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->isCircle:Z

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;FLandroid/net/Uri;ZLcom/beetalk/sdk/helper/ImageLoader-IA;)V

    goto :goto_0

    .line 192
    :cond_1
    new-instance v7, Lcom/beetalk/sdk/helper/ImageLoader;

    iget v2, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    iget v3, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->cornerRadius:F

    iget-object v4, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->uri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->isCircle:Z

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;IFLandroid/net/Uri;ZLcom/beetalk/sdk/helper/ImageLoader-IA;)V

    .line 194
    :goto_0
    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->filePath:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/beetalk/sdk/helper/ImageLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public placeholder(I)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 0

    .line 174
    iput p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->placeHolder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCircle()Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->isCircle:Z

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 0

    .line 164
    iput p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->cornerRadius:F

    return-object p0
.end method
