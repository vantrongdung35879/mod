.class public Lcom/tencent/tme/live/m2/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/m2/b;->a(Landroid/view/Window;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m2/b$a;->a:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/m2/b$a;->a:Landroid/view/Window;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tme/live/m2/b;->a(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method
