.class public Lcom/tencent/mna/n3;
.super Ljava/lang/Object;
.source "TCallPlatform.java"

# interfaces
.implements Lcom/tencent/mna/j2;


# instance fields
.field private a:Lcom/tencent/mna/a1;

.field private b:Lcom/tencent/mna/c1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/tencent/mna/l3;

    invoke-direct {v0}, Lcom/tencent/mna/l3;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/n3;->a:Lcom/tencent/mna/a1;

    .line 5
    new-instance v0, Lcom/tencent/mna/m3;

    invoke-direct {v0}, Lcom/tencent/mna/m3;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/n3;->b:Lcom/tencent/mna/c1;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/mna/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/n3;->b:Lcom/tencent/mna/c1;

    return-object v0
.end method

.method public b()Lcom/tencent/mna/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/n3;->a:Lcom/tencent/mna/a1;

    return-object v0
.end method
