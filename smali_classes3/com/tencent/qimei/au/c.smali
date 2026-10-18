.class public interface abstract annotation Lcom/tencent/qimei/au/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final G:Lcom/tencent/qimei/aa/d;

.field public static final H:Lcom/tencent/qimei/aa/d;

.field public static final I:Lcom/tencent/qimei/aa/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/qimei/aa/d;

    const-string v1, "1"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/aa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/au/c;->G:Lcom/tencent/qimei/aa/d;

    .line 2
    new-instance v0, Lcom/tencent/qimei/aa/d;

    const-string v1, "12"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/aa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/au/c;->H:Lcom/tencent/qimei/aa/d;

    .line 3
    new-instance v0, Lcom/tencent/qimei/aa/d;

    const-string v1, "13"

    const-string v2, "23:50-00:10-60"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/aa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/au/c;->I:Lcom/tencent/qimei/aa/d;

    return-void
.end method
