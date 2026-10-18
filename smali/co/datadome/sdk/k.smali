.class Lco/datadome/sdk/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/datadome/sdk/DataDomeEvent;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lco/datadome/sdk/DataDomeEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/datadome/sdk/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lco/datadome/sdk/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lco/datadome/sdk/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lco/datadome/sdk/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lco/datadome/sdk/k;->f:Ljava/lang/String;

    iput-object p6, p0, Lco/datadome/sdk/k;->e:Ljava/util/List;

    return-void
.end method
