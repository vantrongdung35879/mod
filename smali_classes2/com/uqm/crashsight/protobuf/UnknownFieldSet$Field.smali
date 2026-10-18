.class public final Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1717
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 712
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;-><init>()V

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .line 717
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->e:Ljava/util/List;

    return-object p1
.end method

.method private g()[Ljava/lang/Object;
    .locals 7

    .line 778
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->e:Ljava/util/List;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 821
    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 824
    invoke-static {p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 827
    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 830
    invoke-static {p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 833
    invoke-static {p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    return v1
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 801
    invoke-virtual {p2, p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 804
    invoke-virtual {p2, p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(II)V

    goto :goto_1

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 807
    invoke-virtual {p2, p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IJ)V

    goto :goto_2

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 810
    invoke-virtual {p2, p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    goto :goto_3

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 813
    invoke-virtual {p2, p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final b(I)I
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 898
    invoke-static {p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 845
    invoke-virtual {p2, p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->d:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 765
    :cond_0
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 768
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->g()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->g()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->e:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->g()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
