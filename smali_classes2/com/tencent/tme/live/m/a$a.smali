.class public Lcom/tencent/tme/live/m/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/m/a;->a(Lcom/tencent/tme/live/o/d;Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/m/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/a$a;->a:Lcom/tencent/tme/live/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/m/a$a;->a:Lcom/tencent/tme/live/m/a;

    iget-object v0, v0, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    check-cast v0, Lcom/tencent/tme/live/m/i;

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/i;->a()V

    return-void
.end method
