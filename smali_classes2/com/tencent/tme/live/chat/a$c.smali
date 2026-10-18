.class public Lcom/tencent/tme/live/chat/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/chat/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/chat/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/a$c;->a:Lcom/tencent/tme/live/chat/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a$c;->a:Lcom/tencent/tme/live/chat/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/chat/a;->a(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
