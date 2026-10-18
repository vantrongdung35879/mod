.class public Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;
.super Ljava/lang/Object;
.source "HtmlResImageGetter.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/HtmlResImageGetter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
