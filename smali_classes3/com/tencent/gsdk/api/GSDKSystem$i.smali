.class Lcom/tencent/gsdk/api/GSDKSystem$i;
.super Ljava/lang/Object;
.source "GSDKSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/api/GSDKSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/gsdk/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/gsdk/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/gsdk/i;-><init>(F)V

    iput-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$i;->b:Lcom/tencent/gsdk/i;

    .line 5
    iput-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem$i;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/gsdk/api/GSDKSystem$i;)Lcom/tencent/gsdk/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/gsdk/api/GSDKSystem$i;->b:Lcom/tencent/gsdk/i;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$i;->b:Lcom/tencent/gsdk/i;

    invoke-virtual {v0}, Lcom/tencent/gsdk/i;->a()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/tencent/gsdk/api/GSDKSystem$i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/gsdk/y0;->b(Landroid/content/Context;)F

    move-result v1

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 5
    iget-object v2, p0, Lcom/tencent/gsdk/api/GSDKSystem$i;->b:Lcom/tencent/gsdk/i;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/tencent/gsdk/i;->a(FF)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method
