.class Lcom/tencent/beacon/a/b/a$a;
.super Ljava/lang/Object;
.source "AbsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/tencent/beacon/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/beacon/a/b/k;

    invoke-direct {v0}, Lcom/tencent/beacon/a/b/k;-><init>()V

    sput-object v0, Lcom/tencent/beacon/a/b/a$a;->a:Lcom/tencent/beacon/a/b/a;

    return-void
.end method
