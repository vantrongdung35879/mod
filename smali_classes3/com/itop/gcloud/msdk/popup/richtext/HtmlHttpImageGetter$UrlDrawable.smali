.class public Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter$UrlDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "HtmlHttpImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlDrawable"
.end annotation


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;


# direct methods
.method public constructor <init>(Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter$UrlDrawable;->this$0:Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
