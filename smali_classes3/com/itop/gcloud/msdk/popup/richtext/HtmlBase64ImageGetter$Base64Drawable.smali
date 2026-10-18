.class public Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter$Base64Drawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "HtmlBase64ImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Base64Drawable"
.end annotation


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;


# direct methods
.method public constructor <init>(Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter$Base64Drawable;->this$0:Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlBase64ImageGetter$Base64Drawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
