.class public final Lcom/ihoc/mgpa/vendor/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendor/utils/l;


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/e;

.field public final synthetic b:Lcom/ihoc/mgpa/vendor/utils/l;

.field public final synthetic c:Lcom/ihoc/mgpa/vendor/utils/h;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/h;Lcom/ihoc/mgpa/vendor/utils/e;Lcom/ihoc/mgpa/vendor/utils/s$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/f;->c:Lcom/ihoc/mgpa/vendor/utils/h;

    iput-object p2, p0, Lcom/ihoc/mgpa/vendor/utils/f;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    iput-object p3, p0, Lcom/ihoc/mgpa/vendor/utils/f;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/f;->c:Lcom/ihoc/mgpa/vendor/utils/h;

    sget-object v1, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    .line 1
    iput-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/f;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/l;->a()V

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "GameManager"

    const-string v1, "bind cosa service ok!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/f;->c:Lcom/ihoc/mgpa/vendor/utils/h;

    sget-object v1, Lcom/ihoc/mgpa/vendor/utils/c;->c:Lcom/ihoc/mgpa/vendor/utils/c;

    .line 1
    iput-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    .line 2
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/f;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    .line 3
    iput-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/h;->a:Lcom/ihoc/mgpa/vendor/utils/a;

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/f;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/l;->b()V

    return-void
.end method
