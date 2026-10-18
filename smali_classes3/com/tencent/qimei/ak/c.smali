.class public interface abstract annotation Lcom/tencent/qimei/ak/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final a:Lcom/tencent/qimei/aa/d;

.field public static final b:Lcom/tencent/qimei/aa/d;

.field public static final c:Lcom/tencent/qimei/aa/d;

.field public static final d:Lcom/tencent/qimei/aa/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/qimei/aa/d;

    const-string v1, "1"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/aa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/ak/c;->a:Lcom/tencent/qimei/aa/d;

    .line 2
    new-instance v0, Lcom/tencent/qimei/aa/d;

    const-string v1, "2"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/aa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/ak/c;->b:Lcom/tencent/qimei/aa/d;

    .line 3
    new-instance v0, Lcom/tencent/qimei/aa/d;

    const-string v1, "q16"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/aa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/ak/c;->c:Lcom/tencent/qimei/aa/d;

    .line 4
    new-instance v0, Lcom/tencent/qimei/aa/d;

    const-string v1, "q36"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/aa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/ak/c;->d:Lcom/tencent/qimei/aa/d;

    return-void
.end method
