.class public Lcom/tencent/tme/live/aov/ui/ScheduleView$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/o2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/o2/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/aov/ui/ScheduleView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView$b;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tme/live/w0/d;->e:Lcom/tencent/tme/live/w0/n;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tme/live/w0/d;->e:Lcom/tencent/tme/live/w0/n;

    iget-object p1, p1, Lcom/tencent/tme/live/w0/n;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView$b;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/aov/ui/ScheduleView;->j:Landroid/widget/TextView;

    .line 2
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p2

    iget-object p2, p2, Lcom/tencent/tme/live/w0/d;->e:Lcom/tencent/tme/live/w0/n;

    iget-object p2, p2, Lcom/tencent/tme/live/w0/n;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
