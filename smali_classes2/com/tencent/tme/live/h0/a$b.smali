.class public Lcom/tencent/tme/live/h0/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/h0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/f0/e;

.field public final b:Lcom/tencent/tme/live/h0/a$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f0/e;Lcom/tencent/tme/live/h0/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/h0/a$b;->a:Lcom/tencent/tme/live/f0/e;

    iput-object p2, p0, Lcom/tencent/tme/live/h0/a$b;->b:Lcom/tencent/tme/live/h0/a$a;

    return-void
.end method
