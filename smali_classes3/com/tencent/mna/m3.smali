.class public Lcom/tencent/mna/m3;
.super Ljava/lang/Object;
.source "TCallDiagnostor.java"

# interfaces
.implements Lcom/tencent/mna/c1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 1
    sget-object p1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/tencent/mna/base/jni/f;->a(Z)I

    move-result v0

    return v0
.end method
