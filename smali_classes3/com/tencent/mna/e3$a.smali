.class Lcom/tencent/mna/e3$a;
.super Ljava/lang/Object;
.source "RulesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/tencent/mna/f3;


# direct methods
.method constructor <init>(ILcom/tencent/mna/f3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/mna/e3$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/tencent/mna/e3$a;->b:Lcom/tencent/mna/f3;

    return-void
.end method
